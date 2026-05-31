// ── Kapitel 1: Konzept ──────────────────────────────────────────────────────

= Konzept

#block(
  width: 100%,
  inset: (x: 1em, y: 0.8em),
  radius: 4pt,
  stroke: 0.4pt,
  fill: luma(250),
)[
  *Herkunft des Konzepts.*
  Die Idee der Semantic Anchors stammt nicht vom Autor dieser Arbeit.
  Sie wurde von #link("https://www.linkedin.com/in/rdmueller/")[Ralf D. Müller] im Kontext der LLM-gestützten Softwareentwicklung entwickelt und im offen zugänglichen #link("https://raifdmueller.github.io/Semantic-Anchors/")[Semantic Anchors Catalog] zusammengetragen @semantic_anchors_catalog.
  Die vorliegende Referenz greift dieses Konzept auf und überträgt es auf die Domäne des Enterprise Architecture Management — die konzeptionelle Grundlage gebührt vollständig Ralf D. Müller.
]

Semantic Anchors sind etablierte Fachbegriffe, Methodologien und Frameworks, die als präzise Referenzpunkte in der Kommunikation mit Large Language Models (LLMs) dienen.
Statt umständlicher Erklärungen aktiviert ein einzelner, wohldefinierter Begriff ein ganzes Netzwerk an zugehörigem Wissen im LLM.

Statt zu schreiben «Erkläre mir, wie man eine Unternehmensarchitektur in iterativen Phasen entwickelt, wobei man zuerst eine Architekturvision erstellt, dann die Geschäftsarchitektur, Informationssysteme und Technologie betrachtet und schliesslich Migrationspläne erarbeitet» – reicht der Anchor *«TOGAF ADM Cycle»*, und das LLM aktiviert sein gesamtes Wissen zu diesem Thema @opengroup2018togaf.

Die vorliegende Referenz ordnet die Anchors den Modulen des CAS Enterprise Architecture Management zu und verweist auf die zugehörigen Schlüsselautoren und Publikationen.
Der zugrunde liegende Katalog von Ralf D. Müller dient dabei als Ausgangspunkt und Inspirationsquelle @semantic_anchors_catalog.

== Qualitätskriterien

Ein guter Semantic Anchor erfüllt vier Kriterien:

#table(
  columns: (auto, 1fr),
  inset: (x: 8pt, y: 6pt),
  stroke: none,
  align: (left + top, left + top),
  [*Precise*],      [Verweist auf einen spezifischen, etablierten Wissenskorpus.],
  [*Rich*],         [Aktiviert mehrere vernetzte Konzepte gleichzeitig.],
  [*Consistent*],   [Verschiedene LLMs liefern eine ähnliche konzeptuelle Aktivierung.],
  [*Attributable*], [Rückverfolgbar zu Schlüsselautoren oder Publikationen.],
)

Diese vier Kriterien sind zugleich der rote Faden der folgenden Kapitel: Jeder Anchor wird mit seinen Schlüsselautoren (_Attributable_), den aktivierten Konzepten (_Rich_) und seiner konkreten Anwendung im CAS dokumentiert.
