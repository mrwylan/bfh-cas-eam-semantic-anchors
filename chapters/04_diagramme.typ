// ── Kapitel 4: Textbasierte Diagramme als Semantic Anchors ──────────────────
// Reguläres Kapitel (1.1-Nummerierung aus template.typ). Steht bewusst vor dem
// Anwendungskapitel, da die dortigen Prompt-Beispiele die hier eingeführten
// Diagrammsprachen aufgreifen.

= Textbasierte Diagramme als Semantic Anchors — Tools und Agenten

Die in den vorangehenden Kapiteln beschriebenen Semantic Anchors verweisen auf Frameworks und Methodologien.
Das Prinzip lässt sich jedoch auch auf eine zweite Klasse von Referenzpunkten übertragen: auf *textbasierte Diagrammsprachen*.
Auch sie sind etablierte, wohldefinierte Wissenskorpora und erfüllen die vier Qualitätskriterien (_Precise, Rich, Consistent, Attributable_) — und sie haben eine Eigenschaft, die sie für die Zusammenarbeit mit Large Language Models besonders wertvoll macht.

== Warum textbasierte Diagramme von LLMs erstellt werden können

Grafische Modellierungswerkzeuge erzeugen binäre oder proprietäre Formate, die ein LLM nicht direkt produzieren kann.
Textbasierte Diagrammsprachen hingegen beschreiben ein Diagramm als reinen Quelltext — und genau in diesem Medium operiert ein Sprachmodell.
Daraus folgt ein praktisch bedeutsamer Befund: *Textbasierte Diagrammtypen können von LLMs erfolgreich erstellt werden.*
Der Name der Sprache wirkt dabei selbst als Semantic Anchor — der Anchor *«PlantUML»* oder *«Mermaid»* aktiviert im Modell unmittelbar die zugehörige Syntax, die Diagrammtypen und die Konventionen, sodass aus einer fachlichen Beschreibung direkt valider Diagrammcode entsteht.

Drei Anchors sind in diesem Kontext besonders relevant:

#table(
  columns: (auto, 1fr),
  inset: (x: 8pt, y: 6pt),
  stroke: none,
  align: (left + top, left + top),
  [*PlantUML*],
  [Textbasierte Sprache mit Fokus auf UML-Standards (Use-Case-, Sequenz-, Klassen-, Komponenten-, Deployment-Diagramme) sowie Erweiterungen wie C4. Breiter Diagrammtypen-Umfang, etablierter De-facto-Standard für UML-as-Code.],
  [*Mermaid*],
  [Textbasierte Sprache mit Fokus auf moderne Web-Diagramme (Flowcharts, Git-Graphs, Mindmaps, Quadrant- und XY-Charts). Direkt in Markdown-Umgebungen (u. a. GitHub) renderbar und dadurch besonders verbreitet in der Software-Dokumentation.],
  [*SVG*],
  [Scalable Vector Graphics — XML-basiertes, offenes Format für frei gestaltbare Vektorgrafik. Als Anchor erlaubt es dem LLM, Diagramme ohne festes Schema direkt als skalierbare Grafik zu erzeugen, wenn keine der spezialisierten Diagrammsprachen passt.],
)

Für das Enterprise Architecture Management bedeutet dies, dass Skizzen von Schichtenmodellen, Sequenzabläufen, Capability Maps oder Migrationspfaden im Dialog mit dem LLM unmittelbar als versionierbarer, in der Dokumentation eingebetteter Diagrammcode entstehen können — anschlussfähig an dieselbe textbasierte, nachvollziehbare Arbeitsweise wie der übrige Architektur-Artefaktbestand.

== Einsatz mit Tools und Agenten

Der Mehrwert textbasierter Diagramm-Anchors entfaltet sich im Zusammenspiel mit Werkzeugen und Agenten:

- *Konversationelle LLM-Werkzeuge* (z. B. Claude, ChatGPT) erzeugen aus einer fachlichen Beschreibung direkt PlantUML-, Mermaid- oder SVG-Quelltext, der iterativ verfeinert werden kann.
- *Agentische Entwicklungsumgebungen* (z. B. Claude Code) lesen und schreiben die Diagrammdateien im Repository, halten sie mit dem Code konsistent und committen sie zusammen mit der übrigen Dokumentation.
- *Render- und Dokumentationspipelines* (Mermaid in Markdown/GitHub, PlantUML-Server, Typst-Einbindung von SVG) übersetzen den Quelltext automatisiert in die finale Grafik — ohne manuellen Export aus einem grafischen Werkzeug.

So wird das Diagramm zum versionierbaren Artefakt: Änderungen sind als Textdiff nachvollziehbar, Reviews erfolgen wie bei Quellcode, und die Erstellung lässt sich an ein LLM oder einen Agenten delegieren.

== Vergleich PlantUML und Mermaid

Welche Diagrammsprache sich eignet, hängt vom benötigten Diagrammtyp ab.
@tbl-diagramme-vergleich stellt die von PlantUML und Mermaid unterstützten Diagrammtypen gegenüber.
Als Faustregel gilt: *PlantUML* für UML-lastige, standardnahe Architekturmodellierung, *Mermaid* für leichtgewichtige, direkt in Markdown gerenderte Web-Diagramme — und *SVG* dort, wo frei gestaltbare Grafik jenseits fester Diagrammschemata gefragt ist.

#include "../tables/diagramme_vergleich.typ"
