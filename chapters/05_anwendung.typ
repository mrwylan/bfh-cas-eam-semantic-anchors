// ── Kapitel 5: Anwendungshinweise ───────────────────────────────────────────
#import "../template.typ": prompt-box

= Anwendungshinweise

== In Prompts verwenden

Semantic Anchors entfalten ihre Wirkung am besten, wenn sie gezielt in Prompts eingesetzt werden.
Einige Muster haben sich bewährt:

*Konzeptvertiefung:*
#quote(block: true)[
  «Erkläre mir die Unterschiede zwischen den vier Operating Models nach Ross/Weill/Robertson im Kontext einer kantonalen Verwaltung.»
]

*Methodische Anleitung:*
#quote(block: true)[
  «Ich möchte eine Application Portfolio Analysis mit dem TIME Model durchführen. Welche Bewertungskriterien sollte ich für eine mittelgrosse Versicherung verwenden?»
]

*Querverbindungen herstellen:*
#quote(block: true)[
  «Wie hängen Capability-Based Planning und die TOGAF ADM Phase B (Business Architecture) zusammen? Zeige mir die Verbindung über ArchiMate Motivation Extension.»
]

*Kritische Reflexion:*
#quote(block: true)[
  «Welche Kritik gibt es am Zachman Framework im Vergleich zu TOGAF? Berücksichtige die Argumente von Kotusev zur praktischen Anwendbarkeit von EA-Frameworks.»
]

Die kritische Auseinandersetzung mit den Frameworks – etwa entlang der Argumente von @kotusev2018 – schärft das Verständnis ihrer Grenzen und Einsatzgebiete.

== Anchors kombinieren

Die grösste Wirkung entsteht durch die Kombination mehrerer Anchors in einem Prompt.
Dadurch wird der Kontext präzise eingegrenzt:

#quote(block: true)[
  «Entwickle eine Migrationsstrategie (Architecture Roadmapping, TOGAF Phase E–F) für eine Applikationslandschaft, die ich mit dem TIME Model bewertet habe. Berücksichtige dabei Technical Debt nach dem Cunningham/Fowler-Modell und zeige die Ergebnisse als ArchiMate Migration Viewpoint.»
]

== Diagramme als Code erzeugen

Wie im Kapitel zu textbasierten Diagrammen gezeigt, sind auch die Diagrammsprachen selbst Semantic Anchors: Der Anchor *«PlantUML»*, *«Mermaid»* oder *«SVG»* aktiviert die zugehörige Syntax, sodass aus einer fachlichen Beschreibung unmittelbar valider, versionierbarer Diagrammcode entsteht (@tbl-diagramme-vergleich).
Die folgenden Prompts zeigen je ein Beispiel mit dem vorgestellten Textsyntax eines Formats.

*PlantUML — Sequenzdiagramm einer Architektur-Freigabe (TOGAF ADM Phase G):*
#quote(block: true)[
  «Erzeuge als PlantUML-Sequenzdiagramm die Architektur-Freigabe nach TOGAF ADM Phase G zwischen Architekt, Architecture Board und Projektteam.»
]
#prompt-box[
  ```plantuml
  @startuml
  actor Architekt
  participant "Architecture Board" as Board
  participant Projektteam
  Architekt -> Board: Architektur-Vorschlag
  Board -> Board: Konformitätsprüfung
  Board --> Architekt: Freigabe mit Auflagen
  Architekt -> Projektteam: Architecture Contract
  @enduml
  ```
]

*Mermaid — Flowchart des TOGAF ADM-Zyklus:*
#quote(block: true)[
  «Stelle den TOGAF ADM-Zyklus (Phasen A bis H) als Mermaid-Flowchart dar.»
]
#prompt-box[
  ```mermaid
  flowchart TD
    A[A: Architecture Vision] --> B[B: Business]
    B --> C[C: Information Systems]
    C --> D[D: Technology]
    D --> E[E: Opportunities & Solutions]
    E --> F[F: Migration Planning]
    F --> G[G: Implementation Governance]
    G --> H[H: Architecture Change Mgmt]
    H --> A
  ```
]

*SVG — dreischichtiges ArchiMate-Schema:*
#quote(block: true)[
  «Zeichne als SVG ein dreischichtiges ArchiMate-Schema mit je einem Block für Business, Application und Technology.»
]
#prompt-box[
  ```xml
  <svg xmlns="http://www.w3.org/2000/svg" width="240" height="150">
    <rect x="10" y="10"  width="220" height="40"
          fill="#fff5cc" stroke="#000"/>
    <text x="120" y="35" text-anchor="middle">Business</text>
    <rect x="10" y="55"  width="220" height="40"
          fill="#cce5ff" stroke="#000"/>
    <text x="120" y="80" text-anchor="middle">Application</text>
    <rect x="10" y="100" width="220" height="40"
          fill="#d5f5e3" stroke="#000"/>
    <text x="120" y="125" text-anchor="middle">Technology</text>
  </svg>
  ```
]

Der erzeugte Code kann direkt in die Dokumentation übernommen, gerendert und – wie jedes andere Artefakt – versioniert und im Review nachvollzogen werden.

== Im Lernbericht einsetzen

Semantic Anchors können auch im Lernbericht als Strukturierungshilfe dienen, um die eigene Kompetenzentwicklung entlang etablierter Konzepte zu verorten und Querverbindungen zwischen Modulen sichtbar zu machen.


= Weiterführende Ressourcen

- #link("https://raifdmueller.github.io/Semantic-Anchors/")[Semantic Anchors Catalog] von Ralf D. Müller – Ursprung des Konzepts und kuratierter Katalog für LLM-Kommunikation @semantic_anchors_catalog
- #link("https://www.linkedin.com/in/rdmueller/")[Ralf D. Müller] – Profil des Urhebers des Semantic-Anchors-Konzepts
- #link("https://github.com/LLM-Coding/Semantic-Anchors")[GitHub Repository] – Quellcode und Beitragsmöglichkeiten
- TOGAF#super[®] Standard, Version 9.2 (The Open Group, 2018) @opengroup2018togaf
- Lankhorst, M. et al. (2017): _Enterprise Architecture at Work_, 4th Edition @lankhorst2017
- Ross, J., Weill, P., Robertson, D. (2006): _Enterprise Architecture as Strategy_ @ross2006enterprise
- Hohpe, G., Woolf, B. (2003): _Enterprise Integration Patterns_ @hohpe2003
- Evans, E. (2003): _Domain-Driven Design: Tackling Complexity in the Heart of Software_ @evans2003

Das vollständige Literaturverzeichnis aller in dieser Referenz erwähnten Schlüsselautoren folgt im Anschluss.
