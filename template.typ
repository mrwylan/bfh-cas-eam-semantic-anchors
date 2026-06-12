#let conf(
  title: "Untitled Blueprint",
  subtitle: none,
  authors: (),
  date: none,
  abstract: none,
  body
) = {
  // Page setup
  set page(
    paper: "a4",
    margin: (x: 2.5cm, top: 3cm, bottom: 2.5cm),
    numbering: "1",
    header: align(right, text(size: 8.5pt, fill: luma(100), title))
  )

  // Typography layout — German, Swiss notation (no ß, « » guillemets)
  set text(font: "Linux Libertine", size: 11pt, lang: "de", region: "CH")
  set par(justify: true, leading: 0.65em)
  set heading(numbering: "1.1.")

  // Show rules for clean heading layouts
  show heading: it => block(above: 1.5em, below: 1em, it)
  // Every top-level heading (chapters and the bibliography) starts on a new page.
  // `weak: true` suppresses the break when a heading already sits at the top of
  // a page (e.g. the first chapter right after the table of contents).
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    it
  }

  // Title Block
  align(center)[
    #block(text(weight: "bold", size: 2em, title))
    #if subtitle != none {
      v(0.4em)
      block(text(size: 1.2em, fill: luma(60), style: "italic", subtitle))
    }
    #v(1.5em)

    #grid(
      columns: calc.min(authors.len(), 3),
      gutter: 2em,
      ..authors.map(author => align(center)[
        #strong(author.name) \
        #text(size: 9pt, fill: luma(80), author.affiliation) \
        #link(author.email)
      ])
    )

    #v(1em)
    #if date != none {
      text(style: "italic", date)
    }
  ]

  v(2em)

  // Abstract Block
  if abstract != none {
    align(center, block(width: 85%, inset: 1em, radius: 4pt, fill: luma(245))[
      #align(center)[#strong("Abstract")]
      #v(0.5em)
      #abstract
    ])
    v(2em)
  }

  // Table of Contents
  outline(indent: auto, depth: 2)
  pagebreak()

  body
}

// ── Reusable Prompt Box ─────────────────────────────────────────────────────
// Uniform container for all prompt / code examples throughout the document.
#let prompt-box(body) = block(
  width: 100%,
  inset: 8pt,
  radius: 4pt,
  stroke: 0.4pt,
  fill: luma(250),
)[
  #set text(size: 8.5pt)
  #set par(justify: false, leading: 0.5em)
  #body
]

// ── Reusable Agent / Response Box ───────────────────────────────────────────
// Container for LLM response examples (e.g. generated diagram code).
// White background with only the top-right corner rounded so readers
// immediately recognise this as a response rather than a prompt.
#let agent-box(body) = block(
  width: 100%,
  inset: 8pt,
  radius: (top-left: 0pt, top-right: 4pt, bottom-left: 0pt, bottom-right: 0pt),
  stroke: 0.4pt,
  fill: white,
)[
  #set text(size: 8.5pt)
  #set par(justify: false, leading: 0.5em)
  #body
]

// ── Reusable Table Builders ─────────────────────────────────────────────────
// Shared layout for the module anchor tables. Each row supplies four cells:
// Anchor · Schlüsselautoren · Aktivierte Konzepte · Anwendung im CAS.
#let anchor-table(caption, ..rows) = figure(
  caption: caption,
  kind: table,
  block(width: 100%, breakable: true)[
    #set text(size: 8pt)
    #set par(justify: false, leading: 0.5em)
    #table(
      columns: (2.7cm, 2.5cm, 1fr, 1fr),
      inset: 5pt,
      stroke: 0.4pt,
      fill: (_, y) => if y == 0 { luma(210) } else if calc.odd(y) { luma(248) } else { white },
      align: (left + top, left + top, left + top, left + top),
      table.header(
        [*Anchor*], [*Schlüsselautoren*], [*Aktivierte Konzepte*], [*Anwendung im CAS*],
      ),
      ..rows,
    )
  ],
)

// Shared layout for the cross-cutting (Querschnitt) table: three columns.
#let cross-table(caption, ..rows) = figure(
  caption: caption,
  kind: table,
  block(width: 100%, breakable: true)[
    #set text(size: 8.5pt)
    #set par(justify: false, leading: 0.5em)
    #table(
      columns: (3cm, 1fr, 1fr),
      inset: 6pt,
      stroke: 0.4pt,
      fill: (_, y) => if y == 0 { luma(210) } else if calc.odd(y) { luma(248) } else { white },
      align: (left + top, left + top, left + top),
      table.header(
        [*Anchor*], [*Kernaussage*], [*Typische Einsatzszenarien*],
      ),
      ..rows,
    )
  ],
)
