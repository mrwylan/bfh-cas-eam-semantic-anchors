// ── Kapitel 2: Anchors nach CAS-Modulen ─────────────────────────────────────

= Semantic Anchors nach CAS-Modulen

Die Arbeit orientiert sich strukturell an den vier inhaltlichen Modulen des CAS Enterprise Architecture Management (EA, AE, AO, ISA) gemäss @jarchow2026studienplan[S. 5].
Diese vier Kompetenzmodule bilden das verbindliche curriculare Gerüst des Programms.

Die nachfolgende Gliederung in acht Blöcke entfaltet dieses Gerüst entlang der didaktischen Abfolge des Unterrichts: Den vier Kompetenzmodulen — Enterprise Architektur (EA, Modul 4), Architektur Evolution (AE, Modul 5), Ablauforganisation (AO, Modul 6) und Information Systems Architektur (ISA, Modul 7) — sind eine einführende Grundlagenphase (Modul 1–3) sowie ein abschliessender Ausblick auf aktuelle Themen (Modul 8) vor- und nachgelagert.
Die acht Blöcke sind somit keine eigenständige Taxonomie, sondern die feinere, operative Schicht über den vier Modulen des Studienplans.

Die folgenden Abschnitte ordnen die Semantic Anchors diesen acht Blöcken zu.
Jede Tabelle dokumentiert pro Anchor die Schlüsselautoren, die aktivierten Konzepte und die konkrete Anwendung im CAS.

== Modul 1–2: Einführung & Unternehmen digitalisieren

Die einführenden Module verankern die Unternehmensarchitektur im Geschäftsmodell und in der strategischen Positionierung.
Vom Business Model Canvas @osterwalder2010 über das Strategic Alignment Model @henderson1993 bis zu den vier Operating Models @ross2006enterprise spannen diese Anchors den Bogen von der Geschäftsstrategie zur IT.
@tbl-modul-01-02 fasst die Anchors zusammen.

#include "../tables/modul_01_02.typ"

Bevor diese Anchors in der eigenen Arbeit eingesetzt werden, lohnt sich ein praktischer Selbsttest: Die folgenden Prompts laden dazu ein, die Aktivierungswirkung der Anchors in der _eigenen_ LLM-Umgebung auszukundschaften.
Jeder Prompt kombiniert einen Anchor aus @tbl-modul-01-02 mit einem konkreten Szenario.
Im Sinne des Vorher-Nachher-Vergleichs (siehe Abschnitt zur Praktikabilität) zeigt sich die Stärke des Priors daran, ob die Antwort das spezifische konzeptuelle Gerüst des Anchors entfaltet — oder nur eine generische Beschreibung liefert.

*Business Model Canvas, Osterwalder:*
```text
Wende das Business Model Canvas (Osterwalder) auf einen Blumenladen an der
Einfahrt zu einer Schnellstrasse an. Fülle alle neun Bausteine aus und benenne
die für diesen Standort kritische Value Proposition.
```

*Business-IT Alignment, Henderson & Venkatraman:*
```text
Analysiere mit dem Strategic Alignment Model (Henderson & Venkatraman):
Das Business will eine Cloudlösung und Verkaufsplattform anbieten, die IT
betreibt einen Webshop auf eigener Infrastruktur mit direkter Anbindung an
das ERP-System. Welche der vier Alignment-Perspektiven liegt vor, und wo
entsteht der Bruch zwischen Business- und IT-Domäne?
```

*EA as Strategy, Ross/Weill/Robertson:*
```text
Wende EA as Strategy (Ross/Weill/Robertson) an: Ein Blumengrosshändler (B2B)
zentralisiert und übernimmt eine Kette von Blumenläden, wobei jede Filiale eine
hohe Autonomie aufweist. Wie sieht die EA aus? Welches der vier Operating
Models passt, und welche Strategieoptionen sollten erwogen werden?
```

*Operating Model, MIT CISR:*
```text
Verorte mit dem Operating Model (MIT CISR) entlang der Dimensionen
Standardisierung und Integration: Ein Zulieferer für eine Space Mission stellt
sowohl Drucktanks als auch Einspritzdüsen her und will neu die Automobil-
industrie als Kunde gewinnen. In welchem der vier Quadranten liegt das
Unternehmen, und was bedeutet der neue Markt für die Wahl des Operating Models?
```

== Modul 3: Modellierungssprachen

Modul 3 führt die formalen Notationen ein, mit denen Architektur kommuniziert wird.
ArchiMate @opengroup2019archimate @lankhorst2017 ist die primäre Modellierungssprache, ergänzt durch BPMN @omg2011bpmn, UML @omg2017uml und das Meta-Framework ISO/IEC/IEEE 42010 @iso42010.
Die Anchors sind in @tbl-modul-03 zusammengestellt.

#include "../tables/modul_03.typ"

== Modul 4: Enterprise Architektur

Das Kernmodul etabliert TOGAF @opengroup2018togaf als zentrales Prozessmodell und das Zachman Framework @zachman1987 als komplementäre Taxonomie.
Governance, Prinzipien und Reifegradmodelle @cmmi2010 verankern die EA institutionell.
@tbl-modul-04 listet die Anchors auf.

#include "../tables/modul_04.typ"

== Modul 5: Architektur Evolution

Die Evolution der Architektur von Ist zu Soll wird durch Roadmapping, Portfolio-Bewertung @gartner_time, das Management von Technical Debt @cunningham1992 @fowler2018 sowie Szenario- und Fitness-Function-Ansätze @ford2017 strukturiert.
Die Anchors sind in @tbl-modul-05 dokumentiert.

#include "../tables/modul_05.typ"

== Modul 6: Ablauforganisation

Modul 6 verbindet Strategie und Architektur über Capability-Based Planning und beleuchtet die Wechselwirkung von Organisation und Architektur – von Lean @womack2003 über Reengineering @hammer1993 bis zu Conway's Law @conway1968.
@tbl-modul-06 fasst die Anchors zusammen.

#include "../tables/modul_06.typ"

== Modul 7: Information Systems Architektur

Die Gestaltung der Applikations- und Datenlandschaft stützt sich auf Integration Patterns @hohpe2003, Domain-Driven Design @evans2003, Master Data Management @dama2017 und serviceorientierte Architektur @erl2005.
Die Anchors sind in @tbl-modul-07 aufgeführt.

#include "../tables/modul_07.typ"

== Modul 8: Aktuelle Themen E-Architektur

Das Abschlussmodul adressiert aktuelle Architekturtrends: Cloud-Native @wiggins2011, API Economy, Zero Trust @nist2020zerotrust, Bimodal IT @gartner_bimodal, Platform Engineering @skelton2019 und KI-gestützte EA.
@tbl-modul-08 stellt die Anchors zusammen.

#include "../tables/modul_08.typ"
