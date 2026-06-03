// ── Kapitel 4: Textbasierte Diagramme als Semantic Anchors ──────────────────
// Reguläres Kapitel (1.1-Nummerierung aus template.typ). Steht bewusst vor dem
// Anwendungskapitel, da die dortigen Prompt-Beispiele die hier eingeführten
// Diagrammsprachen aufgreifen.

= Visualisierung und Diagramme als Semantic Anchors

Die Visualisierung von Architektur — Landschaften, Portfolios, Roadmaps, Reifegrade — ist eine *Kernaufgabe des EA-Architekten*: Sie übersetzt komplexe Sachverhalte in Sichten, die Stakeholder auf unterschiedlichen Abstraktionsebenen decodieren können.
Das Konzept der Semantic Anchors stellt dafür zwei komplementäre Klassen von Referenzpunkten bereit: *textbasierte Diagrammsprachen* als Medium (Abschnitte 4.1–4.3) und die *Grammar of Graphics* als Entwurfsdisziplin (Abschnitt 4.4).

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

== Visualisierung als Kernaufgabe: die Grammar of Graphics

Die Wahl der Diagrammsprache beantwortet die Frage _womit_ gezeichnet wird — nicht die Frage, _was_ überhaupt abgebildet werden soll.
Genau hier setzt eine zweite Klasse von Anchors an: die *Grammar of Graphics* von Leland Wilkinson @wilkinson1999 und ihre _layered grammar_ in Hadley Wickhams _ggplot2_ @wickham2010 @wickham2016.
Sie liefern eine benannte, wiederverwendbare Argumentation für die Gestaltung _quantitativer_ EA-Sichten (Portfolio, Heatmap, Roadmap, Migrationskennzahlen).
Im Prompt namentlich zitiert, reaktiviert ein einzelner Anker — etwa *«Grafik = Abbildung, nicht Diagrammtyp»* — die volle dahinterliegende Argumentation und zwingt das LLM, eine sonst stillschweigende Entwurfsentscheidung offenzulegen.

Die *Wilkinson-Anker* (@tbl-vis-wilkinson) fassen den Kern der Grammatik: Eine Grafik ist die Abbildung von Variablen auf visuelle Attribute über eine Pipeline orthogonaler Schichten — der Diagrammtyp ist deren _Resultat_, nicht der Ausgangspunkt.

#include "../tables/visualisierung.typ"

Die *Wickham-Erweiterungen* (@tbl-vis-wickham) machen die einzelne Schicht — nicht den fertigen Chart — zum wiederverwendbaren Asset und beschreiben konkrete Sichten als _Delta_ zu einer Basis-Spezifikation.

=== Anwendung im Prompt

Der Mechanismus ist derselbe wie bei allen Anchors: Der Name im Prompt setzt eine Randbedingung, erzwingt eine Entscheidung und liefert ein Vokabular für die Antwort.
Ohne Anker wählt das LLM einen Diagrammtyp und stylt ihn; mit Anker legt es zuerst die Variablen-Abbildung offen.
Eine bewährte Reihenfolge:

+ Variablen mit Typ listen (kategorial / ordinal / quantitativ / zeitlich).
+ Je Variable die Abbildung Variable→Attribut begründen (Wahrnehmungsrang); die Leitmetrik _muss_ auf Position oder Länge liegen.
+ `cross` vs. `nest` entscheiden (gemeinsamer Plot oder Facets?) und begründen.
+ Encoding von Theme trennen (Branding gehört in die Theme-Ebene).
+ Basis-Sicht definieren; Stakeholder-Varianten nur als Delta beschreiben.

Erst danach wird der resultierende Diagrammtyp benannt — als Ergebnis, nicht als Ausgangspunkt.

*Geltungsbereich (Grenz-Anker).*
Die layered-grammar-Maschinerie setzt _tidy data_ voraus (eine Zeile je Beobachtung) und greift für EA-_Metriken_ (Portfolio, Kosten, Reife, Durchsatz) — *nicht* für EA-_Beziehungsmodelle_ (Knoten/Kanten, ArchiMate-Graphen).
Dort behalten die semantischen Notationen mit fester Symbolbedeutung (ArchiMate, UML, BPMN) Vorrang.
