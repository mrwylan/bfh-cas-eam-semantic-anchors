// ── Kapitel 4: Anwendungshinweise ───────────────────────────────────────────

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

== Im Lernbericht einsetzen

Semantic Anchors können auch im Lernbericht als Strukturierungshilfe dienen, um die eigene Kompetenzentwicklung entlang etablierter Konzepte zu verorten und Querverbindungen zwischen Modulen sichtbar zu machen.


= Weiterführende Ressourcen

- #link("https://llm-coding.github.io/Semantic-Anchors/")[Semantic Anchors Catalog] – Kuratierter Katalog für LLM-Kommunikation (LLM-Coding Community) @semantic_anchors_catalog
- #link("https://github.com/LLM-Coding/Semantic-Anchors")[GitHub Repository] – Quellcode und Beitragsmöglichkeiten
- TOGAF#super[®] Standard, Version 9.2 (The Open Group, 2018) @opengroup2018togaf
- Lankhorst, M. et al. (2017): _Enterprise Architecture at Work_, 4th Edition @lankhorst2017
- Ross, J., Weill, P., Robertson, D. (2006): _Enterprise Architecture as Strategy_ @ross2006enterprise
- Hohpe, G., Woolf, B. (2003): _Enterprise Integration Patterns_ @hohpe2003
- Evans, E. (2003): _Domain-Driven Design: Tackling Complexity in the Heart of Software_ @evans2003

Das vollständige Literaturverzeichnis aller in dieser Referenz erwähnten Schlüsselautoren folgt im Anschluss.
