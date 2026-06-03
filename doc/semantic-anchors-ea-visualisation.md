# Semantic Anchors — Visualisierung im EAM

Wiederverwendbare, benannte Anker für die LLM-gestützte Gestaltung quantitativer EA-Sichten (Portfolio, Heatmap, Roadmap, Migrationskennzahlen). Abgeleitet aus der Grammar of Graphics (Wilkinson, 1999) und ihrer layered-grammar-Fassung (Wickham, 2016 / *ggplot2*).

Referenzierung: Anker werden im Prompt **namentlich** zitiert; liegt diese Datei im Kontext, reaktiviert der Name die volle Argumentation (Kompression). Siehe Abschnitt *Verwendung im Prompt*.

---

## Wilkinson-Anker (Grammar of Graphics, 1999)

| Anker | Kernaussage | Typische Einsatzszenarien |
|---|---|---|
| **Grafik = Abbildung, nicht Diagrammtyp** | Eine Visualisierung ist die Abbildung von Variablen auf visuelle Attribute über eine Pipeline. Der «Charttyp» ist Resultat, nicht Wahl. | Entwurf quantitativer EA-Sichten: zuerst Variable→Attribut spezifizieren, Diagrammtyp zuletzt benennen. Fängt vorschnelle Template-Wahl ab. |
| **Orthogonale Schichten** | Daten, Statistik, Skala, Geometrie, Koordinaten, Ästhetik sind unabhängig und frei kombinierbar; Tausch einer Schicht transformiert das Resultat ohne die übrigen. | Eine Datenbasis, mehrere Views (kartesische Roadmap *und* radiales Reife-Profil). |
| **Pipeline / Reihenfolge ist semantisch tragend** | Skalentransformation kommt vor statistischer Aggregation (`log-dann-Mittel` ≠ `Mittel-dann-log`). | Aggregation von EA-Kennzahlen (Portfolio-Kosten, Incident-Raten): erst Skalenfrage, dann verdichten. |
| **Variablen-Algebra (cross / nest / blend)** | `cross (*)` = kartesisches Produkt, `nest (/)` = Hierarchie/Containment, `blend (+)` = Überlagerung. | Mehrdimensionale Landschaftssichten; Entscheidung gemeinsamer Plot vs. Facets (z.B. Events je eigenes Panel mit eigener Skala). |
| **Kontrolliertes Ästhetik-Vokabular (Wahrnehmungsrang)** | Visuelle Attribute (Position > Länge > Fläche > Farbwert > Farbton) sind ein endliches, rangierbares Set; Farbton nur kategorial. | Encoding-Entscheidungen: Leitmetrik auf Position/Länge; Hue nur für Kategorien; ordinale/quantitative Daten nie in Hue. |
| **Guides als Umkehrabbildung** | Achsen und Legenden sind die Inverse des Encodings; eine Grafik ist nur so lesbar wie ihre Guides. | Heatmaps/Quadranten/Roadmaps so ausstatten, dass Stakeholder auf unterschiedlichen Abstraktionsebenen decodieren können. |
| **Grenz-Anker: semantische vs. statistische Grafik** | Die Grammatik regiert *quantitative* Grafik mit freier Ästhetik. ArchiMate/UML/BPMN sind semantische Sprachen mit fester Symbol-Bedeutungs-Bindung — dort gilt sie nicht. | Klärt, wann Grammar-of-Graphics-Denken greift (Overlays, APM, Roadmap) und wann die Notation Vorrang hat (ArchiMate-Viewpoints). |

---

## Wickham-Erweiterungen (layered grammar / *ggplot2*, 2016)

| Anker | Kernaussage | Typische Einsatzszenarien |
|---|---|---|
| **Layer als wiederverwendbare Einheit** | Nicht der Chart ist das Asset, sondern der einzelne Layer (Daten + Mapping + Geom + Stat + Position) als benanntes, versionierbares Objekt; Layers stapeln. | Ein «Risiko-Overlay» oder «Kosten-Overlay» als Baustein, der über verschiedene Basissichten gelegt wird. Operationalisiert *Orthogonale Schichten*. |
| **Default & Override (Vererbung/Überschreibung)** | Das wiederverwendbare Artefakt ist Basis-Spezifikation + Diff: Standard-Sicht einmal definieren, jede konkrete Sicht ist nur das Delta. | Stakeholder-Varianten (z.B. GL-Roll-up vs. Architektur-Detail) als Delta zur Basis-Sicht, nicht als separate Grafiken. |

---

## Verwendung im Prompt

Mechanismus: Der Anker im Prompt setzt eine **Randbedingung**, **erzwingt eine sonst stillschweigende Entscheidung** und liefert ein **Vokabular** für die Antwort. Wirkung sichtbar im Kontrast — ohne Anker wählt die LLM einen Diagrammtyp und stylt ihn; mit Anker legt sie zuerst die Variablen-Abbildung offen.

Wiederverwendbare Schablone:

```
Kontext: <Sachverhalt / Datenquelle>.
Ziel: <Sicht für welchen Stakeholder>.

Wende vor jedem Diagrammvorschlag diese Anker an (siehe
semantic-anchors-ea-visualisation.md):
- «Grafik = Abbildung, nicht Diagrammtyp»
- «Default & Override»   (bei mehreren Stakeholder-Sichten)

Arbeite in dieser Reihenfolge:
1. Variablen mit Typ listen (kategorial / ordinal / quantitativ / zeitlich).
2. Je Variable Abbildung Variable→Attribut, begründet über Wahrnehmungsrang;
   Leitmetrik MUSS auf Position oder Länge.
3. cross vs. nest entscheiden (gemeinsamer Plot oder Facets?) und begründen.
4. Encoding von Theme trennen (Branding gehört in die Theme-Ebene).
5. Basis-Sicht definieren; Stakeholder-Varianten nur als Delta beschreiben.

Erst danach: resultierenden Diagrammtyp benennen — als Ergebnis, nicht
als Ausgangspunkt.
```

## Caveat (aus dem Grenz-Anker)

Die layered-grammar-Maschinerie (Layer, Facet, Default/Override) setzt **tidy data** voraus (eine Zeile je Beobachtung). Sie greift für EA-*Metriken* (Portfolio, Kosten, Reife, Durchsatz), **nicht** für EA-*Beziehungsmodelle* (Knoten/Kanten, ArchiMate-Graphen). Wer das verwechselt, presst einen Architekturgraphen in einen Balkenplot.
