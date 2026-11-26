#!/usr/bin/env ruby
# Generates src/publications.page from data/publications.yaml (DBLP-style list).
#
#   ruby tools/build_publications.rb          # write the page and print a report
#   ruby tools/build_publications.rb --check  # only print the report
#
# A local PDF (src/papers/<file>) is linked only when rights.status is
# "allowed" and any rights.embargo_until date has passed. Open-access copies
# (oa_url) are always preferred over local copies. See CLAUDE.md.

require 'yaml'
require 'cgi'
require 'date'

ROOT   = File.expand_path('..', __dir__)
DATA   = File.join(ROOT, 'data', 'publications.yaml')
HEADER = File.join(ROOT, 'data', 'publications_header.md')
OUT    = File.join(ROOT, 'src', 'publications.page')
PAPERS = File.join(ROOT, 'src', 'papers')
ME     = 'Vanessa Braganholo'.freeze

TYPES = {
  'journal'    => ['J', 'Journal articles'],
  'conference' => ['C', 'Conference and workshop papers'],
  'chapter'    => ['B', 'Book chapters']
}.freeze
TYPE_ORDER = { 'journal' => 0, 'conference' => 1, 'chapter' => 2 }.freeze

def h(s)
  CGI.escapeHTML(s.to_s).gsub('{', '&#123;').gsub('}', '&#125;')
end

def embargo_over?(r)
  e = r['embargo_until']
  e.nil? || Date.parse(e.to_s) <= Date.today
end

def local_link(p, problems)
  file = p['local_pdf']
  return nil unless file
  r = p['rights'] || {}
  unless r['status'] == 'allowed'
    $awaiting << p['id'] if r['status'] == 'to_confirm'
    problems << "#{p['id']}: local_pdf set but rights.status is '#{r['status']}' (not linked)" unless r['status'] == 'to_confirm'
    return nil
  end
  unless embargo_over?(r)
    problems << "#{p['id']}: under embargo until #{r['embargo_until']} (not linked yet)"
    return nil
  end
  unless File.exist?(File.join(PAPERS, file))
    problems << "#{p['id']}: src/papers/#{file} does not exist (not linked)"
    return nil
  end
  "papers/#{file}"
end

def oa_label(url)
  url =~ %r{\.pdf\z|/pdf/|/download/}i ? 'PDF' : 'Open access'
end

# --- BibTeX (one file per entry in src/bib/<id>.bib) ----------------------

BIB = File.join(ROOT, 'src', 'bib')
ACCENTS = { "́" => "'", "̀" => '`', "̂" => '^', "̃" => '~',
            "̈" => '"', "̧" => 'c' }.freeze

# UTF-8 text -> LaTeX-safe text (accents as {\'a}, special chars escaped)
def tex(s)
  s = s.to_s.gsub(/([&%$#_])/) { "\\#{$1}" }
  s = s.unicode_normalize(:nfd).gsub(/([A-Za-z])([̀-ͯ])/) do
    base = $1 == 'i' ? '\i' : $1
    acc = ACCENTS[$2]
    next "#{$1}#{$2}" unless acc
    acc == 'c' ? "{\\c{#{base}}}" : "{\\#{acc}#{base}}"
  end
  s.unicode_normalize(:nfc)
end

# Braces around words with capitals after the first letter (acronyms, noWorkflow),
# so bibliography styles do not lowercase them
def bib_title(t)
  t.to_s.strip.split(/ /).map { |w| w[1..-1].to_s =~ /[A-Z]/ ? "{#{tex(w)}}" : tex(w) }.join(' ')
end

def bib_pages(pg)
  pg = pg.to_s.strip
  pg.count('-') == 1 ? pg.sub('-', '--') : pg
end

def bibtex(p)
  d = p['details'].to_s.strip
  m = d.match(/\A(?:LNCS (\d+), )?(?:(\d+)(?:\((\d+)\))?: )?(.*)\z/)
  series_vol, volume, number, pages = m ? m.captures : [nil, nil, nil, d]
  kind, container = { 'journal' => ['article', 'journal'], 'conference' => ['inproceedings', 'booktitle'],
                      'chapter' => ['incollection', 'booktitle'] }[p['type']]
  f = []
  f << ['author', p['authors'].map { |a| tex(a) }.join(' and ')]
  f << ['title', bib_title(p['title'])]
  f << [container, tex(p['venue'])]
  if series_vol
    f << ['series', 'Lecture Notes in Computer Science']
    f << ['volume', series_vol]
  end
  f << ['volume', volume] if volume
  f << ['number', number] if number
  f << ['pages', bib_pages(pages)] unless pages.to_s.empty?
  f << ['publisher', tex(p['rights']['publisher'])] if p['type'] == 'chapter' && p.dig('rights', 'publisher').to_s != ''
  f << ['year', p['year'].to_s]
  f << ['doi', p['doi']] if p['doi']
  f << ['url', p['oa_url'] || "https://doi.org/#{p['doi']}"] if p['oa_url'] || p['doi']
  f << ['note', 'Accepted for publication'] if p['status'] == 'accepted'
  width = f.map { |k, _| k.size }.max
  "@#{kind}{#{p['id']},\n" + f.map { |k, v| "  #{k.ljust(width)} = {#{v}}" }.join(",\n") + "\n}\n"
end

def render_entry(p, tag, problems)
  authors = p['authors'].map { |a| a == ME ? "<strong>#{h(a)}</strong>" : h(a) }.join(', ')
  title = p['title'].to_s.strip
  title += '.' unless title =~ /[.?!]\z/
  details = p['details'].to_s.strip
  venue = "<em>#{h(p['venue'])}</em>"
  if p['type'] == 'conference'
    # DBLP style: Venue 2019: 1-11
    venue += " #{p['year']}"
    venue += ": #{h(details)}" unless details.empty?
  else
    # DBLP style: Journal 30: 71:1-71:59 (2025)
    venue += " #{h(details)}" unless details.empty?
    venue += " (#{p['year']})"
  end
  links = []
  links << %(<a href="#{h(p['oa_url'])}">#{oa_label(p['oa_url'])}</a>) if p['oa_url']
  if !p['oa_url'] && (path = local_link(p, problems))
    links << %(<a href="#{h(path)}">PDF</a>)
  elsif p['oa_url'] && p['local_pdf']
    problems << "#{p['id']}: has both oa_url and local_pdf (only the open-access link is shown)"
  end
  links << %(<a href="https://doi.org/#{h(p['doi'])}">DOI</a>) if p['doi']
  links << %(<a class="pub-bib-toggle" href="bib/#{h(p['id'])}.bib">BibTeX</a>)
  link_html = links.empty? ? '' : %( <span class="pub-links">[#{links.join('] [')}]</span>)
  tag_html = tag ? %(<span class="pub-tag pub-#{p['type']}" title="#{h(TYPES[p['type']][1])}">#{tag}</span> ) : ''
  %(<li class="pub" id="#{h(p['id'])}">#{tag_html}#{authors}: <span class="pub-title">#{h(title)}</span> #{venue}.#{link_html}<pre class="pub-bib" hidden>#{h(bibtex(p))}</pre></li>)
end

pubs = YAML.load_file(DATA)
problems = []
$awaiting = []

ids = pubs.map { |p| p['id'] }
ids.select { |i| ids.count(i) > 1 }.uniq.each { |i| problems << "duplicate id #{i}" }
pubs.each do |p|
  %w[id type status year authors title venue].each do |f|
    problems << "#{p['id'] || '?'}: missing #{f}" if p[f].nil? || p[f].to_s.empty?
  end
  problems << "#{p['id']}: unknown type #{p['type']}" unless TYPES.key?(p['type'])
end

accepted  = pubs.select { |p| p['status'] == 'accepted' }
published = pubs.reject { |p| p['status'] == 'accepted' }

# DBLP-style numbering per type: oldest = 1
counters = Hash.new(0)
tags = {}
published.sort_by { |p| [p['year'], p['id']] }.each do |p|
  letter = TYPES[p['type']][0]
  counters[letter] += 1
  tags[p['id']] = "#{letter}#{counters[letter]}"
end

years = published.map { |p| p['year'] }.uniq.sort.reverse

html = []
# Style for the inline BibTeX box lives in the page itself, so it works even
# when the browser still has an old andreas01.css in cache
html << '<style>.publications pre.pub-bib {background-color:#f4f4f4; border:1px solid #ccc; border-radius:3px; box-sizing:border-box; font-size:0.85em; line-height:1.35; margin:6px 0 4px; max-width:100%; overflow-wrap:anywhere; padding:6px 8px; text-indent:0; white-space:pre-wrap; word-break:break-word;}</style>'
html << '<div class="publications">'
html << '<p class="pub-legend">' + TYPES.map { |t, (l, d)| %(<span class="pub-tag pub-#{t}">#{l}</span> #{d}) }.join(' &nbsp; ') + '</p>'
nav = []
nav << '<a href="#accepted">Accepted</a>' unless accepted.empty?
nav += years.map { |y| %(<a href="#y#{y}">#{y}</a>) }
html << %(<p class="pub-years">#{nav.join(' | ')}</p>)
unless accepted.empty?
  html << '<h3 class="pub-year" id="accepted">Accepted / to appear</h3>'
  html << '<ul class="publist">'
  accepted.sort_by { |p| [TYPE_ORDER[p['type']], p['title']] }.each { |p| html << render_entry(p, TYPES[p['type']][0], problems) }
  html << '</ul>'
end
years.each do |y|
  html << %(<h3 class="pub-year" id="y#{y}">#{y}</h3>)
  html << '<ul class="publist">'
  published.select { |p| p['year'] == y }
           .sort_by { |p| [TYPE_ORDER[p['type']], -tags[p['id']][1..-1].to_i] }
           .each { |p| html << render_entry(p, tags[p['id']], problems) }
  html << '</ul>'
end
html << '</div>'
# BibTeX links open the entry inline (without JavaScript they download the .bib file)
html << <<~JS.chomp
  <script>
  document.addEventListener('click', function (e) {
    var a = e.target.closest && e.target.closest('a.pub-bib-toggle');
    if (!a) return;
    var pre = a.closest('li').querySelector('pre.pub-bib');
    if (!pre) return;
    e.preventDefault();
    pre.hidden = !pre.hidden;
    if (!pre.hidden) {
      var r = document.createRange(); r.selectNodeContents(pre);
      var s = window.getSelection(); s.removeAllRanges(); s.addRange(r);
    }
  });
  </script>
JS

header = File.read(HEADER)
page = header.rstrip + "\n\n" + html.join("\n") + "\n"

if ARGV.include?('--check')
  puts 'Check only: page not written.'
else
  File.write(OUT, page)
  puts "Wrote #{OUT.sub(ROOT + '/', '')} (#{published.size} published, #{accepted.size} accepted)"
  Dir.mkdir(BIB) unless Dir.exist?(BIB)
  pubs.each { |p| File.write(File.join(BIB, "#{p['id']}.bib"), bibtex(p)) }
  stale = Dir[File.join(BIB, '*.bib')].map { |f| File.basename(f, '.bib') } - ids
  stale.each { |i| File.delete(File.join(BIB, "#{i}.bib")) }
  puts "Wrote src/bib/ (#{pubs.size} BibTeX files#{stale.empty? ? '' : ", removed #{stale.size} stale"})"
end

by_status = pubs.group_by { |p| (p['rights'] || {})['status'] }
puts "Rights status: " + by_status.map { |k, v| "#{k}=#{v.size}" }.join(', ')
need = pubs.select { |p| (p['rights'] || {})['status'] == 'allowed' && !p['oa_url'] && !p['local_pdf'] && !p['no_pdf'] }
unless need.empty?
  puts "\nAllowed but no PDF yet (#{need.size}):"
  need.each { |p| puts "  #{p['id']} [#{p['rights']['version_needed']}] #{p['title'][0, 70]}" }
end
unless $awaiting.empty?
  puts "\nLocal PDF present but rights still 'to_confirm' (not linked): #{$awaiting.size}"
end
unless problems.empty?
  puts "\nWarnings:"
  problems.each { |m| puts "  - #{m}" }
end
