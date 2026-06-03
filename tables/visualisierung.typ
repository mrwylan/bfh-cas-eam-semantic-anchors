// ── Tabellen: Visualisierungs-Anchors (Grammar of Graphics) ─────────────────
// Zwei Tabellen im cross-table-Schema (Anchor · Kernaussage · Einsatzszenarien):
// die Wilkinson-Anker der Grammar of Graphics und die Wickham-Erweiterungen der
// layered grammar. Datengrundlage: doc/semantic-anchors-ea-visualisation.md.
#import "../template.typ": cross-table

#cross-table(
  [Wilkinson-Anker — Grammar of Graphics @wilkinson1999],

  [*Grafik = Abbildung, nicht Diagrammtyp*],
  [Eine Visualisierung ist die Abbildung von Variablen auf visuelle Attribute über eine Pipeline; der «Charttyp» ist Resultat, nicht Wahl.],
  [Entwurf quantitativer EA-Sichten: zuerst Variable→Attribut spezifizieren, Diagrammtyp zuletzt benennen. Fängt vorschnelle Template-Wahl ab.],

  [*Orthogonale Schichten*],
  [Daten, Statistik, Skala, Geometrie, Koordinaten und Ästhetik sind unabhängig und frei kombinierbar; der Tausch einer Schicht transformiert das Resultat ohne die übrigen.],
  [Eine Datenbasis, mehrere Views (kartesische Roadmap _und_ radiales Reife-Profil).],

  [*Pipeline / Reihenfolge ist semantisch tragend*],
  [Skalentransformation kommt vor statistischer Aggregation (`log-dann-Mittel` ≠ `Mittel-dann-log`).],
  [Aggregation von EA-Kennzahlen (Portfolio-Kosten, Incident-Raten): erst Skalenfrage, dann verdichten.],

  [*Variablen-Algebra (cross / nest / blend)*],
  [`cross (*)` = kartesisches Produkt, `nest (/)` = Hierarchie/Containment, `blend (+)` = Überlagerung.],
  [Mehrdimensionale Landschaftssichten; Entscheidung gemeinsamer Plot vs. Facets (z. B. Events je eigenes Panel mit eigener Skala).],

  [*Kontrolliertes Ästhetik-Vokabular (Wahrnehmungsrang)*],
  [Visuelle Attribute (Position > Länge > Fläche > Farbwert > Farbton) bilden ein endliches, rangierbares Set; Farbton nur kategorial.],
  [Encoding-Entscheidungen: Leitmetrik auf Position/Länge; Farbton nur für Kategorien; ordinale/quantitative Daten nie in Farbton.],

  [*Guides als Umkehrabbildung*],
  [Achsen und Legenden sind die Inverse des Encodings; eine Grafik ist nur so lesbar wie ihre Guides.],
  [Heatmaps/Quadranten/Roadmaps so ausstatten, dass Stakeholder auf unterschiedlichen Abstraktionsebenen decodieren können.],

  [*Grenz-Anker: semantische vs. statistische Grafik*],
  [Die Grammatik regiert _quantitative_ Grafik mit freier Ästhetik. ArchiMate/UML/BPMN sind semantische Sprachen mit fester Symbol-Bedeutungs-Bindung — dort gilt sie nicht.],
  [Klärt, wann Grammar-of-Graphics-Denken greift (Overlays, APM, Roadmap) und wann die Notation Vorrang hat (ArchiMate-Viewpoints).],
) <tbl-vis-wilkinson>

#cross-table(
  [Wickham-Erweiterungen — layered grammar / _ggplot2_ @wickham2010 @wickham2016],

  [*Layer als wiederverwendbare Einheit*],
  [Nicht der Chart ist das Asset, sondern der einzelne Layer (Daten + Mapping + Geom + Stat + Position) als benanntes, versionierbares Objekt; Layer stapeln.],
  [Ein «Risiko-Overlay» oder «Kosten-Overlay» als Baustein, der über verschiedene Basissichten gelegt wird. Operationalisiert _Orthogonale Schichten_.],

  [*Default & Override (Vererbung / Überschreibung)*],
  [Das wiederverwendbare Artefakt ist Basis-Spezifikation + Diff: Standard-Sicht einmal definieren, jede konkrete Sicht ist nur das Delta.],
  [Stakeholder-Varianten (z. B. GL-Roll-up vs. Architektur-Detail) als Delta zur Basis-Sicht, nicht als separate Grafiken.],
) <tbl-vis-wickham>
