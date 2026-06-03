// ── Tabelle: Vergleich PlantUML vs. Mermaid ─────────────────────────────────
// Gegenüberstellung der von PlantUML und Mermaid unterstützten Diagrammtypen.
// Datengrundlage: vom Autor erstellte Vergleichstabelle (PlantUML_vs_Mermaid).

#let ja = text(fill: rgb("#1a7f37"), weight: "bold")[#sym.checkmark]
#let nein = text(fill: rgb("#b42318"), weight: "bold")[#sym.times]

#figure(
  caption: [Unterstützte Diagrammtypen in PlantUML und Mermaid],
  kind: table,
  block(width: 100%, breakable: true)[
    #set text(size: 8.5pt)
    #set par(justify: false, leading: 0.5em)
    #table(
      columns: (3.4cm, auto, auto, 1fr),
      inset: 5pt,
      stroke: 0.4pt,
      fill: (_, y) => if y == 0 { luma(210) } else if calc.odd(y) { luma(248) } else { white },
      align: (left + horizon, center + horizon, center + horizon, left + horizon),
      table.header(
        [*Diagrammtyp*], [*PlantUML*], [*Mermaid*], [*Anmerkungen*],
      ),

      [Usecase Diagram],     ja,   nein, [PlantUML hat umfangreiche UC-Unterstützung],
      [Sequence Diagram],    ja,   ja,   [Beide gut unterstützt, PlantUML detaillierter],
      [Class Diagram],       ja,   ja,   [Beide implementiert, PlantUML mehr Features],
      [Activity Diagram],    ja,   ja,   [PlantUML bietet mehr Symbole],
      [State Diagram],       ja,   ja,   [Beide vorhanden],
      [Component Diagram],   ja,   nein, [Nur PlantUML],
      [Deployment Diagram],  ja,   nein, [Nur PlantUML],
      [Object Diagram],      ja,   nein, [Nur PlantUML],
      [Package Diagram],     ja,   nein, [Nur PlantUML],
      [Timing Diagram],      ja,   nein, [Nur PlantUML],
      [Gantt Chart],         ja,   ja,   [Beide unterstützen Projektplanung],
      [Flowchart],           ja,   ja,   [Beide unterstützen, Mermaid flexibler],
      [ER Diagram],          ja,   ja,   [Datenbankmodellierung],
      [C4 Diagram],          ja,   nein, [PlantUML C4 Extension],
      [Mind Map],            nein, ja,   [Nur Mermaid],
      [Git Graph],           nein, ja,   [Nur Mermaid],
      [Quadrant Chart],      nein, ja,   [Nur Mermaid],
      [XY Chart],            nein, ja,   [Nur Mermaid],
      [Requirement Diagram], nein, ja,   [Nur Mermaid],
      [Pie Chart],           nein, ja,   [Nur Mermaid],
      [Block Diagram],       ja,   ja,   [PlantUML via Plugins],
      [Petri Net],           ja,   nein, [Nur PlantUML],
    )
  ],
) <tbl-diagramme-vergleich>

#v(0.5em)

#block(
  width: 100%,
  inset: (x: 1em, y: 0.6em),
  radius: 4pt,
  stroke: 0.4pt,
  fill: luma(250),
)[
  *Zusammenfassung.*
  *PlantUML* deckt 20+ Diagrammtypen ab und ist auf UML-Standards fokussiert.
  *Mermaid* bietet 12+ Diagrammtypen und eignet sich gut für moderne Web-Diagramme.
]
