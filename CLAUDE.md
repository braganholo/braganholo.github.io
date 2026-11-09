# Homepage de Vanessa Braganholo

Site estático gerado com **webgen 1.7.2** (`src/` → `out/`). O GitHub Actions
(`.github/workflows/webgen.yml`) faz o build e publica no GitHub Pages a cada
push em `main`. Não fazer commit/push sem pedido explícito.

Prévia local: o Ruby do sistema (2.6) não tem o bundler fixado no lockfile, então
instale os gems numa pasta temporária e rode o webgen numa cópia do site:

    gem install --no-document --install-dir <tmp>/gems rexml:3.2.6 kramdown:2.4.0 cmdparse:3.0.7 systemu:2.6.5 webgen:1.7.2
    GEM_HOME=<tmp>/gems GEM_PATH=<tmp>/gems <tmp>/gems/bin/webgen   # rodar dentro da cópia

## Página de publicações (estilo DBLP)

`src/publications.page` é **gerado**. Nunca editar à mão.

- `data/publications.yaml`: fonte única das publicações (uma entrada por artigo).
- `data/publications_header.md`: front matter e texto introdutório da página.
- `tools/build_publications.rb`: gera a página e imprime um relatório
  (`ruby tools/build_publications.rb`, ou `--check` para só ver o relatório).
- `src/papers/`: PDFs hospedados no site (copiados pela regra de `src/metainfo`).

Escopo combinado com a Vanessa (09/11/2026): periódicos, artigos completos em
congressos, capítulos de livro e artigos aceitos. **Fora**: livros organizados,
resumos, resumos expandidos, textos em revistas, relatórios técnicos.
Página em inglês.

### Campos de cada entrada

    id: sobrenome-do-1o-autor + ano + "-" + sigla do veículo (ex.: pimentel2019-msr); sufixo b/c se repetir
    lattes: posição no export do Lattes usado na importação (só referência)
    type: journal | conference | chapter
    status: published | accepted
    year, authors (lista; usar exatamente "Vanessa Braganholo" para ela), title, venue, details (vol(num): páginas)
    doi: sem "https://doi.org/"
    oa_url: cópia pública (open access) — quando existe, é o único link de PDF exibido
    local_pdf: nome do arquivo em src/papers/ — só é exibido se rights.status == allowed
    no_pdf: (opcional) motivo para não ter PDF mesmo sendo permitido (ex.: decisão da Vanessa); tira o item do relatório de pendências
    rights:
      publisher, policy (resumo da regra), source (URL da política), checked (data da checagem)
      status: open_access | allowed | to_confirm | not_allowed | pending
      version_needed: accepted (manuscrito aceito) | published (PDF da editora) | any
      embargo_until: AAAA-MM-DD (opcional; o PDF só aparece depois dessa data)

### Regras de direitos (verificadas em 09/11/2026)

Ordem de decisão: (1) há cópia open access? → `oa_url`; (2) senão, a editora
permite cópia no site pessoal? → `local_pdf` com a versão permitida; (3) senão,
só DOI. Na dúvida, `to_confirm` e perguntar à Vanessa.

| Editora | O que pode ir no site | Fonte |
|---|---|---|
| ACM | Todo o acervo é open access desde jan/2026 → link `https://dl.acm.org/doi/pdf/<doi>` | acm.org/publications/openaccess |
| SBC (SOL, JIDM, JBCS) | Open access → link do SOL | sol.sbc.org.br |
| Elsevier | Manuscrito aceito, imediato, com licença CC BY-NC-ND e link para o DOI | elsevier.com/about/policies-and-standards/sharing |
| Springer (periódico) | Manuscrito aceito no site pessoal imediatamente, com aviso + link DOI | springernature.com/gp/open-science/policies/journal-policies |
| Springer (LNCS/proceedings) | Manuscrito aceito, liberado 12 meses após a publicação, com aviso "This is an Accepted Manuscript..." | springernature.com/gp/open-science/policies/book-policies |
| IEEE | Manuscrito aceito com aviso "© AAAA IEEE. Personal use of this material is permitted..." + DOI | IEEE Author Center (post-publication policies) |
| Wiley | Manuscrito aceito após 12 meses, com o aviso da Wiley na 1ª página | authors.wiley.com (self-archiving) |
| Inderscience | Manuscrito aceito após 12 meses (Sherpa: homepage do autor) — confirmar | inderscience.com (author entitlement) |
| IGI Global | PDF final do próprio capítulo/artigo no site pessoal, com link para a IGI — reconferir | igi-global.com/policies/content-reuse |
| VLDB 2004 | O PDF traz a permissão de cópia não comercial da VLDB → cópia local | aviso no próprio PDF |
| Eventos antigos sem DOI (SBBD < 2016, WTDBD, WEI, SBSC 2009–2014, SEMISH, CTD, WSL, ONTOBRAS, CILAMCE, IDEAS, iiWAS, WebDB...) | Depende de ter havido cessão de direitos → `to_confirm` até a Vanessa confirmar | — |

O PDF da editora (versão publicada) **nunca** vai para `src/papers/`, exceto nos
casos em que a política permite explicitamente (IGI, VLDB 2004). Ao adicionar
um manuscrito aceito, inserir na primeira página (ou numa capa) o aviso exigido
pela editora e o link para o DOI.

### Procedimento de atualização (quando a Vanessa pedir)

1. Obter as novidades: Lattes novo (PDF em `../lattes-braganholo.pdf`), ou
   título/DOI informado por ela. Comparar com `data/publications.yaml`
   (por título/DOI) e listar o que é **novo** e o que passou de **accepted → published**.
2. Para cada item: buscar o DOI e o status de open access (OpenAlex:
   `https://api.openalex.org/works/https://doi.org/<doi>`; Crossref para DOI
   por título). O DBLP bloqueia acesso automatizado; não usar.
3. Classificar os direitos pela tabela acima (consultar a fonte se for uma
   editora nova) e preencher `rights` com `checked` = data de hoje.
4. Se a cópia local for permitida, pedir à Vanessa o caminho do PDF na versão
   certa (`version_needed`), copiar para `src/papers/<id>.pdf` e preencher `local_pdf`.
5. Rodar `ruby tools/build_publications.rb`, ler o relatório, gerar a prévia e
   mostrar o resultado. Commit/push só com o OK dela.
6. Uma vez por ano: revisar itens `to_confirm`/`allowed sem PDF`/`embargo_until`,
   e conferir se algum artigo fechado passou a ser open access.

### Preparar um manuscrito aceito a partir dos fontes LaTeX

Os fontes da Vanessa costumam marcar as revisões com cor (`\new{}`, `\textcolor{red}{}`,
macros por autor como `\vanessaC`/`\vanessaF`). Nunca editar a pasta original: copiar/descompactar
numa pasta temporária e rodar

    python3 tools/aam_clean_tex.py main.tex clean.tex <cores a desembrulhar> <macros a manter só o texto> <macros a apagar> notice.txt
    latexmk -pdf clean.tex

- `notice.txt` contém o aviso exigido pela editora (texto LaTeX), que vai para o topo da 1ª página (eso-pic).
- Só desembrulhar cores de marcação de revisão; cores legítimas (destaque de código, figuras) ficam.
- Conferir: comparar o texto (`pdftotext`) com o PDF que ela forneceu e checar as cores na prévia.
- Salvar como `src/papers/<id>.pdf` e preencher `local_pdf`.

Quando o manuscrito aceito já existe em PDF limpo (ex.: gerado do Word), não é
preciso recompilar: carimbar o aviso com `pdfpages` + `eso-pic` (`\AddToShipoutPictureFG*`
antes de `\includepdf[pages=-]{aam.pdf}`), conferindo que o aviso não cobre o título.
Antes, comparar o texto palavra a palavra com o PDF publicado para confirmar que é a versão aceita.
Diferenças de copidesque/prova são esperadas (o manuscrito aceito não as inclui); avisar a Vanessa só do que for conteúdo.

Armadilhas:
- PDFs "finais" nas pastas camera-ready às vezes já são a versão da editora (cabeçalho do evento,
  rodapé "978-…/$31.00 © IEEE", produtor "Conference Publishing Solutions"/iText). Esses não servem.
- Word via AppleScript: o Word só tem acesso à pasta já liberada pela Vanessa
  (`<scratchpad>/aam/is2020/word`); em outra pasta dá timeout (-1712). Copiar o .docx para lá.
- Documentos com controle de alterações ligado: antes de salvar em PDF,
  `set track revisions of d to false` e `accept all revisions d`, senão saem balões na margem.
- O Word desta máquina substitui "Times" por Sylfaen (muda a paginação). Se já houver um PDF
  limpo com as fontes certas, preferir editá-lo: remover blocos de texto do stream da página com
  pypdf (blocos BT…ET pela coordenada y) em vez de regerar pelo Word.

Avisos usados:
- Springer: "This version of the article has been accepted for publication, after peer review (when applicable) and is subject to Springer Nature's AM terms of use (https://www.springernature.com/gp/open-research/policies/accepted-manuscript-terms), but is not the Version of Record and does not reflect post-acceptance improvements, or any corrections. The Version of Record is available online at: https://doi.org/<doi>"
- Elsevier: "© <ano>. This manuscript version is made available under the CC-BY-NC-ND 4.0 license https://creativecommons.org/licenses/by-nc-nd/4.0/. The final version was published in <revista> <vol>: <pp>, https://doi.org/<doi>"
- IEEE: "© <ano> IEEE. Personal use of this material is permitted. Permission from IEEE must be obtained for all other uses, in any current or future media, including reprinting/republishing this material for advertising or promotional purposes, creating new collective works, for resale or redistribution to servers or lists, or reuse of any copyrighted component of this work in other works. Published in: <evento>, pp. <pp>. DOI: https://doi.org/<doi>"
- Wiley: "This is the peer reviewed version of the following article: <autores>. <título>. <revista> <vol>(<n>): <pp> (<ano>), which has been published in final form at https://doi.org/<doi>. This article may be used for non-commercial purposes in accordance with Wiley Terms and Conditions for Use of Self-Archived Versions."
