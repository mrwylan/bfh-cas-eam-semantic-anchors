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

== Praktikabilität und Grenzen

Ein Semantic Anchor _definiert_ keinen Begriff — er aktiviert ein Wissen, das im Modell bereits vorhanden sein muss.
Diese Einsicht hat eine unmittelbare Konsequenz für die praktische Anwendung: Die Wirksamkeit eines Anchors hängt davon ab, wie _dicht_ das Konzept in den Trainingsdaten des LLM repräsentiert ist.
Das Semantic-Anchors-Projekt hat diese Abhängigkeit in einem reproduzierbaren Experiment systematisch untersucht @semantic_anchors_training_data.

Ein dichter Prior — etwa _«Cockburn Use Cases»_ oder _«TOGAF ADM Cycle»_ — löst zuverlässig das vollständige konzeptuelle Gerüst aus: Akteure, Ziel-Ebenen, Extension Points, Templates.
Ein schwacher Prior — getestet wurde _«Use-Case 3.0»_ — hingegen aktiviert _nichts_ Spezifisches.
Das Modell reagiert nicht mit einer Fehlermeldung, sondern mit einer von drei Fehlerformen, die für den Praktiker unterschiedlich schwer zu erkennen sind:

#table(
  columns: (auto, 1fr),
  inset: (x: 8pt, y: 6pt),
  stroke: 0.4pt,
  align: (left + top, left + top),
  table.header([*Fehlerform*], [*Beschreibung*]),
  [*Transparente Substitution*], [Das Modell erkennt die Wissenslücke und signalisiert sie («Ich bin nicht sicher, was genau Sie mit … meinen»). Der sicherste Fall — der Anwender weiss, dass der Anchor nicht gezündet hat.],
  [*Stille Substitution*], [Das Modell liefert unter dem angeforderten Begriff Inhalte, die einem älteren oder verwandten Konzept entstammen — ohne Hinweis. Die Ausgabe sieht korrekt aus, ist es aber nicht.],
  [*Konfabulation*], [Das Modell _erfindet_ eine in sich schlüssige, aber fiktive Beschreibung des Begriffs — inklusive erfundener Prinzipien und Autorenzuschreibungen. Ohne Domänenwissen oder Quellenabgleich nicht als Fälschung erkennbar.],
)

Für den Praktiker bedeutet dies: Bevor ein Anchor in Prompts, Lernberichten oder Agent-Skills produktiv eingesetzt wird, sollte seine tatsächliche Aktivierungswirkung an den konkret verwendeten Modellen getestet werden.
Das einfachste Verfahren ist ein Vorher-Nachher-Vergleich: Dieselbe Aufgabenstellung einmal mit und einmal ohne den Anchor ausführen und die Struktur der Antwort vergleichen.
Verändert der Anchor die Struktur nicht messbar, ist der Prior für dieses Modell zu schwach — der Begriff gehört dann in einen expliziten _Contract_ (eine mitgelieferte Definition), nicht in einen Anchor @semantic_anchors_training_data.

Diese Grenze ist nicht statisch.
Mit jeder neuen Trainingsgeneration verschiebt sich die Dichte der Trainingsdaten: Ein Begriff, der heute konfabuliert wird, kann in einer künftigen Modellgeneration zum verlässlichen Anchor werden — sofern der publizierte Korpus entsprechend wächst.
Die Praktikabilität eines Anchors ist damit keine Eigenschaft des Begriffs, sondern eine Eigenschaft des _Begriffs zu einem bestimmten Zeitpunkt, für ein bestimmtes Modell_.
