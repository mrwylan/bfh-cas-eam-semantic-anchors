// ── Tabelle: Verwendung von KI-gestützten Tools ─────────────────────────────
#figure(
  caption: [Übersicht der eingesetzten KI-gestützten Tools],
  kind: table,
  block(width: 100%, breakable: true)[
    #set text(size: 9pt)
    #set par(justify: false, leading: 0.5em)
    #table(
      columns: (2.6cm, 2.6cm, 2.2cm, 1fr),
      inset: 6pt,
      stroke: 0.4pt,
      fill: (_, y) => if y == 0 { luma(210) } else { white },
      align: (left + top, left + top, left + top, left + top),
      table.header(
        [*Tool*], [*Funktionsart*], [*Umfang*], [*Verwendung*],
      ),

      [Claude (Anthropic, Modell claude-sonnet-4 / claude-opus-4)],
      [KI-generierter Text, durch Autor überarbeitet und validiert],
      [Alle Texte der Arbeit],
      [Ersterstellung von Textpassagen mittels gezieltem Prompting; sämtliche Ausgaben durch den Autor gelesen, inhaltlich geprüft und bei Bedarf angepasst],
    )
  ],
) <tbl-ki-tools>
