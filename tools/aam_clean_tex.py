"""Make a clean accepted-manuscript .tex: unwrap \textcolor{c}{X} for given colors,
neutralize revision macros, and add a first-page publisher notice (eso-pic)."""
import sys, re
src, dst, colors, macros_keep, macros_drop, notice = sys.argv[1:7]
s = open(src, encoding='utf-8', errors='surrogateescape').read()
colors = [c for c in colors.split(',') if c]

def unwrap(s, color):
    pat = '\\textcolor{%s}{' % color
    out, i, n = [], 0, 0
    while True:
        j = s.find(pat, i)
        if j < 0: out.append(s[i:]); break
        # skip occurrences inside \newcommand definitions (we redefine those)
        line_start = s.rfind('\n', 0, j) + 1
        if '\\newcommand' in s[line_start:j] or s[line_start:j].lstrip().startswith('%'):
            out.append(s[i:j + len(pat)]); i = j + len(pat); continue
        k, depth = j + len(pat), 1
        while depth:
            if s[k] == '\\': k += 2; continue
            depth += {'{': 1, '}': -1}.get(s[k], 0); k += 1
        out.append(s[i:j]); out.append(s[j + len(pat):k - 1]); i = k; n += 1
    print(f'unwrapped {n} x \\textcolor{{{color}}}', file=sys.stderr)
    return ''.join(out)

for c in colors: s = unwrap(s, c)
redefs = ''.join('\\renewcommand{\\%s}[1]{#1}' % m for m in macros_keep.split(',') if m)
redefs += ''.join('\\renewcommand{\\%s}[1]{}' % m for m in macros_drop.split(',') if m)
note = open(notice, encoding='utf-8').read().strip()
inject = ('\n%% --- accepted-manuscript cleanup (homepage) ---\n' + redefs + '\n'
          '\\usepackage{eso-pic}\n'
          '\\AddToShipoutPictureFG*{\\AtPageUpperLeft{\\put(\\LenToUnit{2cm},\\LenToUnit{-0.6cm}){'
          '\\parbox[t]{\\dimexpr\\paperwidth-4cm\\relax}{\\scriptsize\\sffamily\\raggedright ' + note + '}}}}\n')
assert s.count('\\begin{document}') == 1
s = s.replace('\\begin{document}', inject + '\\begin{document}')
open(dst, 'w', encoding='utf-8', errors='surrogateescape').write(s)
