// ── Tabelle: Modul 3 — Modellierungssprachen ────────────────────────────────
#import "../template.typ": anchor-table

#anchor-table(
  [Semantic Anchors — Modul 3: Modellierungssprachen],

  [*ArchiMate 3.x, Full Framework*],
  [The Open Group; Marc Lankhorst et al.],
  [3 Schichten (Business, Application, Technology), Strategy & Motivation Extensions, Viewpoints, Beziehungstypen (Structural, Dynamic, Dependency, Other), Metamodell],
  [Primäre Modellierungssprache für EA-Arbeit; Basis für Architekturdiagramme in allen Folgemodulen @opengroup2019archimate @lankhorst2017],

  [*BPMN 2.0, OMG Standard*],
  [Object Management Group],
  [Pools, Lanes, Events (Start, Intermediate, End), Gateways (XOR, AND, OR), Tasks, Subprocesses, Message Flows],
  [Prozessmodellierung auf operativer Ebene; Verbindung zu ArchiMate Business Layer @omg2011bpmn],

  [*UML Component Diagram*],
  [OMG, Grady Booch et al.],
  [Komponenten, Interfaces (provided/required), Ports, Konnektoren, Abhängigkeiten],
  [Modellierung der Applikationsarchitektur auf logischer Ebene @omg2017uml],

  [*UML Deployment Diagram*],
  [OMG, Grady Booch et al.],
  [Nodes, Artifacts, Deployment Specifications, Kommunikationspfade],
  [Modellierung der technischen Infrastruktur und Verteilung @omg2017uml],

  [*Viewpoints and Views, ISO 42010*],
  [ISO/IEC/IEEE 42010:2011],
  [Stakeholder Concerns, Architecture Viewpoints, Architecture Views, Model Kinds, Architecture Description],
  [Meta-Framework zur Strukturierung von Architekturmodellen; begründet die Auswahl von Diagrammen @iso42010],
) <tbl-modul-03>
