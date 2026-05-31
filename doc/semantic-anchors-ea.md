# Semantic Anchors für Enterprise Architecture Management

> **Referenzdokument zum CAS Enterprise Architecture Management, BFH**
> Version 1.0 | März 2026

## Konzept

Semantic Anchors sind etablierte Fachbegriffe, Methodologien und Frameworks, die als präzise Referenzpunkte in der Kommunikation mit Large Language Models (LLMs) dienen. Statt umständlicher Erklärungen aktiviert ein einzelner, wohldefinierter Begriff ein ganzes Netzwerk an zugehörigem Wissen im LLM.

**Beispiel:** Statt zu schreiben *„Erkläre mir, wie man eine Unternehmensarchitektur in iterativen Phasen entwickelt, wobei man zuerst eine Architekturvision erstellt, dann die Geschäftsarchitektur, Informationssysteme und Technologie betrachtet und schliesslich Migrationspläne erarbeitet"* – reicht der Anchor **„TOGAF ADM Cycle"**, und das LLM aktiviert sein gesamtes Wissen zu diesem Thema.

### Qualitätskriterien

Ein guter Semantic Anchor ist:

- **Precise** – Verweist auf einen spezifischen, etablierten Wissenskorpus
- **Rich** – Aktiviert mehrere vernetzte Konzepte gleichzeitig
- **Consistent** – Verschiedene LLMs liefern ähnliche konzeptuelle Aktivierung
- **Attributable** – Rückverfolgbar zu Schlüsselautoren oder Publikationen

Quelle: [Semantic Anchors Catalog](https://llm-coding.github.io/Semantic-Anchors/) (LLM-Coding Community)

---

## Anchors nach CAS-Modulen

### Modul 1–2: Einführung & Unternehmen digitalisieren

| Anchor | Schlüsselautoren | Aktivierte Konzepte | Anwendung im CAS |
|--------|-----------------|---------------------|-------------------|
| **Business Model Canvas, Osterwalder** | Alexander Osterwalder, Yves Pigneur | 9 Bausteine, Value Proposition Design, Geschäftsmodellmuster, Pivot-Strategien | Ausgangspunkt für die Ableitung einer Ideal-Architektur aus dem Geschäftsmodell |
| **Business-IT Alignment, Henderson & Venkatraman** | John Henderson, N. Venkatraman (1993) | Strategic Alignment Model, 4 Domänen (Business Strategy, IT Strategy, Organizational Infrastructure, IT Infrastructure), 4 Alignment-Perspektiven | Fundamentales Konzept für die Verknüpfung von Geschäfts- und IT-Strategie |
| **Digital Transformation, Westerman et al.** | George Westerman, Didier Bonnet, Andrew McAfee (MIT CISR) | Digital Mastery Matrix, digitale Fähigkeiten vs. Führungsstärke, Transformationspfade, „Leading Digital" | Strategischer Rahmen für die Digitalisierung und die Rolle der EA dabei |
| **EA as Strategy, Ross/Weill/Robertson** | Jeanne Ross, Peter Weill, David Robertson (MIT CISR, 2006) | 4 Operating Models (Coordination, Unification, Diversification, Replication), Foundation for Execution, Engagement Model, IT-Governance-Archetypen | Verbindung von EA mit strategischer Positionierung; zentral für Modul 2 und als Querschnittskonzept |
| **Operating Model, MIT CISR** | Ross, Weill, Robertson | Standardisierung vs. Integration als zwei Dimensionen, Kern-Diagramm der vier Quadranten | Schnellanalyse der organisationalen Ausrichtung als Basis für EA-Entscheidungen |

### Modul 3: Modellierungssprachen

| Anchor | Schlüsselautoren | Aktivierte Konzepte | Anwendung im CAS |
|--------|-----------------|---------------------|-------------------|
| **ArchiMate 3.x, Full Framework** | The Open Group; Marc Lankhorst et al. | 3 Schichten (Business, Application, Technology), Strategy & Motivation Extensions, Viewpoints, Beziehungstypen (Structural, Dynamic, Dependency, Other), Metamodell | Primäre Modellierungssprache für EA-Arbeit; Basis für Architekturdiagramme in allen Folgemodule |
| **BPMN 2.0, OMG Standard** | Object Management Group | Pools, Lanes, Events (Start, Intermediate, End), Gateways (XOR, AND, OR), Tasks, Subprocesses, Message Flows | Prozessmodellierung auf operativer Ebene; Verbindung zu ArchiMate Business Layer |
| **UML Component Diagram** | OMG, Grady Booch et al. | Komponenten, Interfaces (provided/required), Ports, Konnektoren, Abhängigkeiten | Modellierung der Applikationsarchitektur auf logischer Ebene |
| **UML Deployment Diagram** | OMG, Grady Booch et al. | Nodes, Artifacts, Deployment Specifications, Kommunikationspfade | Modellierung der technischen Infrastruktur und Verteilung |
| **Viewpoints and Views, ISO 42010** | ISO/IEC/IEEE 42010:2011 | Stakeholder Concerns, Architecture Viewpoints, Architecture Views, Model Kinds, Architecture Description | Meta-Framework zur Strukturierung von Architekturmodellen; begründet die Auswahl von Diagrammen |

### Modul 4: Enterprise Architektur

| Anchor | Schlüsselautoren | Aktivierte Konzepte | Anwendung im CAS |
|--------|-----------------|---------------------|-------------------|
| **TOGAF ADM Cycle** | The Open Group | Phasen (Preliminary, A–H, Requirements Management), Deliverables pro Phase, Iteration, Architecture Repository, Stakeholder Management | Zentrales Prozessmodell der EA-Arbeit; Referenzrahmen für alle Architekturentwicklungsprojekte |
| **TOGAF Architecture Repository** | The Open Group | Architecture Metamodel, Architecture Landscape, Reference Library, Standards Information Base, Governance Log | Strukturierung und Verwaltung von Architekturartefakten |
| **TOGAF Building Blocks** | The Open Group | Architecture Building Blocks (ABBs), Solution Building Blocks (SBBs), Abstraktionsebenen, Wiederverwendbarkeit | Komponentenbasierter Ansatz für Architekturentwurf |
| **Zachman Framework, Ontology** | John Zachman (1987, erweitert 2011) | 6×6-Matrix, Interrogative (What, How, Where, Who, When, Why), Perspektiven (Planner bis Functioning Enterprise), Klassifikation statt Methode | Strukturierungshilfe und Taxonomie für EA-Artefakte; komplementär zu TOGAF |
| **Architecture Principles, TOGAF** | The Open Group | Struktur: Name, Statement, Rationale, Implications; Enterprise Principles vs. Architecture Principles vs. Design Principles | Governance-Instrument; leitet Architekturentscheidungen und schränkt den Lösungsraum ein |
| **Architecture Governance, TOGAF** | The Open Group | Architecture Board, Compliance Reviews, Dispensation Process, Architecture Contracts, Governance Framework | Institutionelle Verankerung der EA in der Organisation |
| **CMMI Maturity Levels** | SEI, Carnegie Mellon University | 5 Reifegrade (Initial, Managed, Defined, Quantitatively Managed, Optimizing), Process Areas, Appraisals | Einordnung und Weiterentwicklung der EA-Praxis; Basis für Maturitätsbewertungen |

### Modul 5: Architektur Evolution

| Anchor | Schlüsselautoren | Aktivierte Konzepte | Anwendung im CAS |
|--------|-----------------|---------------------|-------------------|
| **Architecture Roadmapping, TOGAF Phase E–F** | The Open Group | Transition Architectures, Work Packages, Implementation Factor Assessment, Migration Planning, Priorisierung | Planung der schrittweisen Transformation von Ist zu Soll |
| **Application Portfolio Management, TIME Model** | Gartner (ursprünglich) | Tolerate, Invest, Migrate, Eliminate; Portfolio-Quadranten, Bewertungskriterien (technischer Zustand, Business Value, Risiko) | Bewertung und Rationalisierung der bestehenden Applikationslandschaft |
| **Technical Debt, Cunningham Metaphor** | Ward Cunningham (1992); Martin Fowler (Quadranten) | Bewusste vs. unbewusste Schulden, reckless vs. prudent, Zinsmetapher, Refactoring-Strategien | Erkennung und Management von Architekturschulden bei der Evolutionsplanung |
| **Scenario Planning, Shell Method** | Pierre Wack, Peter Schwartz, Royal Dutch Shell | Multiple Futures, Driving Forces, Critical Uncertainties, Scenario Matrix, Wind Tunneling | Entwicklung und Bewertung verschiedener Soll-Szenarien für die Architekturevolution |
| **Fitness Function, Evolutionary Architecture** | Neal Ford, Rebecca Parsons, Patrick Kua | Architectural Fitness Functions, Guided Evolution, Incremental Change, messbare Architektureigenschaften | Operationalisierung von Architekturzielen als messbare Kriterien für evolutionäre Weiterentwicklung |

### Modul 6: Ablauforganisation

| Anchor | Schlüsselautoren | Aktivierte Konzepte | Anwendung im CAS |
|--------|-----------------|---------------------|-------------------|
| **Capability-Based Planning** | TOGAF, diverse EA-Praktiker | Business Capability Maps, Heatmaps, Capability Maturity Assessment, strategische Priorisierung, Capability Increments | Brücke zwischen Strategie und Architektur; strukturiert Investitionsentscheidungen |
| **Value Stream Mapping, Lean** | Toyota Production System; James Womack, Daniel Jones | End-to-End-Wertschöpfungsketten, Durchlaufzeit, Verschwendungsarten (Muda), Current State Map, Future State Map | Analyse und Optimierung organisationsübergreifender Prozesse |
| **Business Process Reengineering, Hammer & Champy** | Michael Hammer, James Champy (1993) | Radikale Neugestaltung, Prozessorientierung vs. funktionale Organisation, Clean-Sheet-Ansatz | Historischer Kontext und Kontrastfolie zur inkrementellen Prozessverbesserung |
| **Conway's Law** | Melvin Conway (1967) | Organisationsstruktur spiegelt sich in Systemarchitektur; Inverse Conway Maneuver; Team Topologies | Verständnis der Wechselwirkung zwischen Aufbauorganisation und IT-Architektur |

### Modul 7: Information Systems Architektur

| Anchor | Schlüsselautoren | Aktivierte Konzepte | Anwendung im CAS |
|--------|-----------------|---------------------|-------------------|
| **Enterprise Integration Patterns, Hohpe & Woolf** | Gregor Hohpe, Bobby Woolf (2003) | Message Channel, Message Router, Message Translator, Message Endpoint, Pipes and Filters, Publish-Subscribe | Standardvokabular für Integrationsarchitektur; einer der am besten dokumentierten Pattern-Kataloge |
| **Domain-Driven Design, Eric Evans** | Eric Evans (2003); Vaughn Vernon | Bounded Contexts, Ubiquitous Language, Context Mapping, Aggregates, Strategic vs. Tactical DDD | Strukturierung von Applikationslandschaften und Datendomänen; Grundlage für Microservice-Schnitte |
| **Master Data Management** | diverse Autoren | Golden Record, Data Stewardship, Data Governance, Datenqualitätsdimensionen, Hub-Architekturen | Sicherstellung von Datenkonsistenz über Systeme hinweg; zentral für organisationsübergreifende Lösungen |
| **Data Architecture, DAMA-DMBOK** | DAMA International | Data Governance, Data Quality, Data Modeling, Data Integration, Metadata Management, 11 Wissensgebiete | Umfassendes Referenzframework für alle Aspekte des Datenmanagements |
| **SOA, Service-Oriented Architecture** | Thomas Erl et al. | Service-Prinzipien (Loose Coupling, Abstraction, Reusability, Composability), Service Registry, Enterprise Service Bus | Architekturparadigma für die Gestaltung von Applikationslandschaften; historischer Kontext für Microservices |

### Modul 8: Aktuelle Themen E-Architektur

| Anchor | Schlüsselautoren | Aktivierte Konzepte | Anwendung im CAS |
|--------|-----------------|---------------------|-------------------|
| **Cloud-Native Architecture, 12-Factor App** | Adam Wiggins / Heroku (2011); CNCF | 12 Faktoren, Microservices, Container, Kubernetes, Serverless, Cloud-native Patterns, Skalierbarkeit | Moderne Architekturprinzipien für Cloud-Deployment |
| **API Economy, API-First Design** | diverse | REST, OpenAPI/Swagger, API Gateways, API Lifecycle Management, Developer Experience, API Monetarisierung | APIs als strategisches Asset; Plattform-Ökosysteme und Partnerschaften |
| **Zero Trust Architecture, NIST SP 800-207** | NIST, John Kindervag (Forrester) | Never Trust Always Verify, Micro-Segmentation, Identity-Centric Security, Least Privilege, Continuous Verification | Modernes Security-Architekturparadigma; Ablösung perimeterbasierten Schutzes |
| **Bimodal IT / Pace-Layered Architecture, Gartner** | Gartner | Mode 1 (Stability) vs. Mode 2 (Agility); alternativ: Systems of Record, Systems of Differentiation, Systems of Innovation | Differenzierte Architekturstrategien für unterschiedliche Innovationsgeschwindigkeiten |
| **Platform Engineering** | Team Topologies (Skelton & Pais); diverse | Internal Developer Platform, Self-Service, Golden Paths, Platform as a Product, Developer Experience | Aktueller Trend zur Skalierung von Entwicklungsfähigkeiten durch interne Plattformen |
| **AI-Enabled Enterprise Architecture** | diverse (emerging) | AI-gestützte EA-Analyse, Digital Twin of an Organization (DTO), automatisierte Architektur-Compliance, AI Governance | Emerging Topic: Integration von KI in die EA-Praxis und als Architekturgegenstand |

---

## Querschnitts-Anchors

Diese Anchors sind modulübergreifend relevant und können in verschiedenen Kontexten eingesetzt werden:

| Anchor | Kernaussage | Typische Einsatzszenarien |
|--------|-------------|--------------------------|
| **Separation of Concerns** | Zerlegung komplexer Systeme in unabhängig handhabbare Aspekte | Schichtenarchitektur, Modularisierung, Viewpoint-Auswahl |
| **Loose Coupling, High Cohesion** | Minimale Abhängigkeiten zwischen Modulen, maximale Zusammengehörigkeit innerhalb | Integrationsarchitektur, Microservices, Applikationsschnitte |
| **Architecture Decision Records (ADRs)** | Dokumentation architektureller Entscheidungen mit Kontext, Entscheidung und Konsequenzen | Nachvollziehbarkeit von EA-Entscheidungen; relevant für beide Kompetenznachweise |
| **Stakeholder Management, Power-Interest Grid** | Klassifikation von Stakeholdern nach Einfluss und Interesse | TOGAF Phase A (Architecture Vision); Kommunikationsplanung für EA-Initiativen |
| **PDCA Cycle, Deming** | Plan-Do-Check-Act als kontinuierlicher Verbesserungszyklus | Meta-Modell für iterative EA-Entwicklung; Lernende Organisation |
| **Wardley Mapping** | Simon Wardley | Situational Awareness, Value Chain, Evolution Axis, Landscape Maps | Strategische Positionierung von Komponenten; Build vs. Buy vs. Outsource-Entscheidungen |

---

## Anwendungshinweise

### In Prompts verwenden

Semantic Anchors entfalten ihre Wirkung am besten, wenn sie gezielt in Prompts eingesetzt werden. Einige Muster:

**Konzeptvertiefung:**
> *„Erkläre mir die Unterschiede zwischen den vier Operating Models nach Ross/Weill/Robertson im Kontext einer kantonalen Verwaltung."*

**Methodische Anleitung:**
> *„Ich möchte eine Application Portfolio Analysis mit dem TIME Model durchführen. Welche Bewertungskriterien sollte ich für eine mittelgrosse Versicherung verwenden?"*

**Querverbindungen herstellen:**
> *„Wie hängen Capability-Based Planning und die TOGAF ADM Phase B (Business Architecture) zusammen? Zeige mir die Verbindung über ArchiMate Motivation Extension."*

**Kritische Reflexion:**
> *„Welche Kritik gibt es am Zachman Framework im Vergleich zu TOGAF? Berücksichtige die Argumente von Kotusev zur praktischen Anwendbarkeit von EA-Frameworks."*

### Anchors kombinieren

Die grösste Wirkung entsteht durch die Kombination mehrerer Anchors in einem Prompt. Dadurch wird der Kontext präzise eingegrenzt:

> *„Entwickle eine Migrationsstrategie (Architecture Roadmapping, TOGAF Phase E–F) für eine Applikationslandschaft, die ich mit dem TIME Model bewertet habe. Berücksichtige dabei Technical Debt nach dem Cunningham/Fowler-Modell und zeige die Ergebnisse als ArchiMate Migration Viewpoint."*

### Im Lernbericht einsetzen

Semantic Anchors können auch im Lernbericht als Strukturierungshilfe dienen, um die eigene Kompetenzentwicklung entlang etablierter Konzepte zu verorten und Querverbindungen zwischen Modulen sichtbar zu machen.

---

## Weiterführende Ressourcen

- [Semantic Anchors Catalog](https://llm-coding.github.io/Semantic-Anchors/) – Kuratierter Katalog für LLM-Kommunikation (LLM-Coding Community)
- [GitHub Repository](https://github.com/LLM-Coding/Semantic-Anchors) – Quellcode und Beitragsmöglichkeiten
- TOGAF® Standard, Version 9.2 (The Open Group, 2018)
- Lankhorst, M. et al. (2017): *Enterprise Architecture at Work*, 4th Edition
- Ross, J., Weill, P., Robertson, D. (2006): *Enterprise Architecture as Strategy*
- Hohpe, G., Woolf, B. (2003): *Enterprise Integration Patterns*
- Evans, E. (2003): *Domain-Driven Design: Tackling Complexity in the Heart of Software*
