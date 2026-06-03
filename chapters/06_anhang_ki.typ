// ── Anhang: Verwendung von KI-gestützten Tools ──────────────────────────────
// Einziger Anhang nach dem Literaturverzeichnis. Die Heading-Nummerierung wird
// auf das Anhang-Schema (A, A.1, …) umgestellt und der Zähler zurückgesetzt; die
// allgemeine Pagebreak-Regel aus template.typ setzt den Anhang automatisch auf
// eine neue Seite.

#set heading(numbering: "A.1.")
#counter(heading).update(0)

= Anhang: Verwendung von KI-gestützten Tools

Die vorliegende Arbeit wurde unter Einsatz eines KI-gestützten Werkzeugs erstellt.
Statt jede einzelne Textpassage separat zu annotieren, legt dieser Anhang die durchgehend angewandte Arbeitsweise offen: Sämtliche Texte wurden in einem interaktiven, iterativen Prozess zwischen Autor und Sprachmodell erstellt, bei dem der Autor steuert, prüft und verantwortet.

#include "../tables/ki_tools.typ"

*Hinweis zur Deklaration.*
Die generierten Texte wurden nicht unreflektiert übernommen.
Der Autor hat durchgehend steuernd eingegriffen (Prompts, Korrekturen, inhaltliche Validierung) und trägt die Verantwortung für alle Aussagen und Formulierungen.

== Ergänzung zur Selbständigkeitserklärung

#block(
  width: 100%,
  inset: (x: 1em, y: 0.8em),
  radius: 4pt,
  stroke: 0.4pt,
  fill: luma(250),
)[
  «Ich bestätige, die vorliegende Arbeit selbständig verfasst zu haben.
  Sämtliche Textstellen, die nicht von mir stammen, sind gekennzeichnet und mit dem genauen Hinweis auf ihre Herkunft versehen.
  Die verwendeten Quellen (gilt auch für Abbildungen, Grafiken u. ä.) sind im Literatur- bzw. Quellenverzeichnis aufgeführt.

  Ich bestätige weiterhin, dass ich bei der Erstellung dieser Studienarbeit durchgehend steuernd gearbeitet habe und von einer KI erzeugte Texte bzw. Textfragmente nicht unreflektiert übernommen habe.»
]
