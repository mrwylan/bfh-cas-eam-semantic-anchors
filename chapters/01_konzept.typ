// ── Kapitel 1: Konzept ──────────────────────────────────────────────────────
#import "../template.typ": prompt-box

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

Ein dichter Prior (das Vorwissen des Modells über einen Begriff) — etwa _«Cockburn Use Cases»_ oder _«TOGAF ADM Cycle»_ — löst zuverlässig das vollständige konzeptuelle Gerüst aus: Akteure, Ziel-Ebenen, Extension Points, Templates.
Ein schwacher Prior — getestet wurde _«Use-Case 3.0»_ — hingegen aktiviert _nichts_ Spezifisches.
Das Modell reagiert nicht mit einer Fehlermeldung, sondern mit einer von drei Fehlerformen, die für den Praktiker unterschiedlich schwer zu erkennen sind:

#table(
  columns: (auto, 1fr),
  inset: (x: 8pt, y: 6pt),
  stroke: 0.4pt,
  align: (left + top, left + top),
  table.header([*Fehlerform*], [*Beschreibung*]),
  [*Transparente Substitution*], [Das Modell erkennt die Wissenslücke und signalisiert sie («Ich bin nicht sicher, was genau mit … gemeint ist.»). Der sicherste Fall — der Anwender weiss, dass der Anchor nicht gezündet hat.],
  [*Stille Substitution*], [Das Modell liefert unter dem angeforderten Begriff Inhalte, die einem älteren oder verwandten Konzept entstammen — ohne Hinweis. Die Ausgabe sieht korrekt aus, ist es aber nicht.],
  [*Konfabulation*], [Das Modell _erfindet_ eine in sich schlüssige, aber fiktive Beschreibung des Begriffs — inklusive erfundener Prinzipien und Autorenzuschreibungen. Ohne Domänenwissen oder Quellenabgleich nicht als Fälschung erkennbar.],
)

Für den Praktiker bedeutet dies: Bevor ein Anchor in Prompts, Lernberichten oder Agenten-Skills produktiv eingesetzt wird, sollte seine tatsächliche Aktivierungswirkung an den konkret verwendeten Modellen getestet werden.
Das einfachste Verfahren ist ein Vorher-Nachher-Vergleich: Dieselbe Aufgabenstellung einmal mit und einmal ohne den Anchor ausführen und die Struktur der Antwort vergleichen.
Verändert der Anchor die Struktur nicht messbar, ist der Prior für dieses Modell zu schwach — der Begriff gehört dann in einen expliziten _Contract_ (eine mitgelieferte Definition), nicht in einen Anchor @semantic_anchors_training_data.

Diese Grenze ist nicht statisch.
Mit jeder neuen Trainingsgeneration verschiebt sich die Dichte der Trainingsdaten: Ein Begriff, der heute konfabuliert wird, kann in einer künftigen Modellgeneration zum verlässlichen Anchor werden — sofern der publizierte Korpus entsprechend wächst.

#box(
  fill: rgb("ffe0b2"),
  inset: (x: 8pt, y: 6pt),
  radius: 4pt,
  stroke: 0.4pt + rgb("fb8c00"),
)[
  Die Praktikabilität eines Anchors ist damit keine Eigenschaft des Begriffs, sondern eine Eigenschaft des _Begriffs zu einem bestimmten Zeitpunkt, für ein bestimmtes Modell_.
]

== Kapazitätsrelativität: Dekompression für schwache Modelle

Aus der vorigen Beobachtung folgt der für die Praxis entscheidende Punkt: Ein Anchor ist _kapazitätsrelativ_.
Bei einem starken Modell genügt der Name plus ein dünner Zeiger, weil das Modell die zugrunde liegende Logik latent enthält und selbst entfaltet.
Die gesamte Kompressionsleistung des Anchors funktioniert nur unter dieser Annahme.
Ein schwaches Modell enthält die Unterscheidung nicht zuverlässig — der Anchor muss daher vollständig _dekomprimiert_ werden: nicht als Beschreibung, sondern als ausführbares Mikro-Programm mit Test, Beispiel und Fehlermodus-Sperre.

Als durchgängiges Beispiel dient der Anchor *«Digital Transformation, Westerman et al.»* (@tbl-modul-01-02) und seine Kernunterscheidung zwischen _Digitalisierung_ (gleicher Wert, anderer Kanal) und echter _Transformation_ (Veränderung von Angebot, Kundschaft oder Wertlogik) @westerman2014.
Bei einem starken Modell genügt der Anchor-Name.
Bei einem schwachen Modell stoppt das Modell bei der naheliegenden Digitalisierungs-Lesart und übersieht die Transformation.

=== Die vier Hebel für ein schwaches Modell

#table(
  columns: (auto, 1fr),
  inset: (x: 8pt, y: 6pt),
  stroke: 0.4pt,
  align: (left + top, left + top),
  table.header([*Hebel*], [*Wirkung*]),
  [*1. Diskriminator operationalisieren*],
  [Nicht «radikale Verbesserung von Reichweite» (zu abstrakt, das Modell halluziniert), sondern ein mechanischer Test: Ändert sich WAS angeboten wird, WER bedient wird, oder WIE Wert/Erlös entsteht? Nein zu allen dreien = Digitalisierung.],
  [*2. Beide Lesarten erzwingen*],
  [Der zentrale Trick. Ein schwaches Modell stoppt bei der ersten, naheliegenden (Digitalisierungs-)Lesart. Das Erzeugen _beider_ Lesarten wird zum Pflichtschritt, bevor klassifiziert wird.],
  [*3. Die Falle als harte Regel benennen*],
  [«Kanalsubstitution ist keine Transformation. Wenn deine Antwort nur das beschreibt, hast du die Aufgabe nicht gelöst.»],
  [*4. Ausgabeformat fixieren und Few-Shot mitgeben*],
  [Ein einziges kontrastierendes Beispiel mitgeben. Schwache Modelle pattern-matchen — ein festes Format und ein Beispiel lenken dieses Verhalten.],
)

Diese vier Hebel verwandeln den komprimierten Anchor in einen vollständig ausformulierten Prompt.
Der folgende Entwurf zeigt das Ergebnis am Westerman-Beispiel:

#prompt-box[
  ROLLE: Du prüfst eine einzelne betriebliche Beobachtung auf ihr Veränderungspotenzial.

  HARTE REGEL: Eine reine Kanalsubstitution ist KEINE Transformation.
  Kanalsubstitution = eine Aufgabe, die bisher per Telefon, Papier oder E-Mail lief, läuft neu über Webformular oder App.
  Gleiches Angebot, gleiche Kunden, gleiche Wertlogik, nur anderes Medium. Das nennen wir DIGITALISIERUNG.
  Transformation liegt NUR vor, wenn sich mindestens eines ändert: WAS angeboten wird, WER bedient wird, oder WIE Wert/Erlös entsteht.

  VORGEHEN (alle Schritte, keinen überspringen): \
  1. Beobachtung in einem Satz wiedergeben. \
  2. DIGITALISIERUNGS-LESART: die minimale Lösung, die nur den Kanal ersetzt. Pflicht, auch wenn banal. \
  3. TRANSFORMATIONS-LESART: eine Lösung, bei der sich WAS/WER/WIE ändert. Fällt dir keine ein, schreibe «keine erkennbar» und begründe. Nichts erfinden. \
  4. TEST: Wende auf JEDE Lesart die Frage an: Ändert sich WAS/WER/WIE? Markiere jede Lesart als [Digitalisierung] oder [Transformation]. \
  5. ERGEBNIS: eine Zeile. Welche Lesart ist welche, und welche strategische Frage folgt daraus.

  BEISPIEL — Beobachtung: «Lieferanten können Werbeflächen nur telefonisch reservieren.» \
  2. Digitalisierung: Online-Buchungsformular mit Verfügbarkeitsanzeige. Telefon wird Web, WAS/WER/WIE unverändert. [Digitalisierung] \
  3. Transformation: Werbeinventar wird Self-Service-Marktplatz mit dynamischen Preisen und Performance-Daten; Werbung wird eigenständige, skalierbare Erlösquelle. WAS (Datenprodukt statt Fixplatz) und WIE (Erlösmodell) ändern sich. [Transformation] \
  5. Ergebnis: Das Formular ist Digitalisierung. Strategische Frage: Wollen wir aus der Werbeflächen-Verwaltung ein Media-Geschäft machen?

  DEINE BEOBACHTUNG: [hier einsetzen]
]

=== Boundary Condition

Bewusst weggelassen sind die Führungsachse (_Fashionista_ aus der Digital-Mastery-Matrix) und die Gestaltungsfelder des Anchors.
Bei einem schwachen Modell verdünnt jeder zusätzliche Begriff den einen Diskriminator, den es treffen soll.
Die Frage war «die Kernunterscheidung», also fokussiert der Prompt ausschliesslich darauf.
Der Ausgang «keine erkennbar, begründe, nichts erfinden» ist dabei das Scheinpräzisions-Prinzip in Promptform: Er verhindert, dass das Modell eine Transformation _fabriziert_, wo keine ist — die Promptform der Konfabulationssperre aus dem vorigen Abschnitt.

Daraus folgt eine Gestaltungsregel für den Anchor-Einsatz an schwachen Modellen: ein _Stark-Anchor_ pro Reasoning-Bündel, aber für schwache Modelle ein _dekomponiertes Set_ einzeln auslösbarer Mikro-Prompts statt eines überladenen.
Die Führungs- und Domänen-Prüfung gehört dann nicht in denselben Prompt, sondern in separate, nachgelagerte Anchor — die saubere Konsequenz aus der Kapazitätsrelativität.
