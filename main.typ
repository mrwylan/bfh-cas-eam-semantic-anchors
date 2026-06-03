#import "template.typ": conf

#show: conf.with(
  title: "Semantic Anchors für Enterprise Architecture Management",
  subtitle: "Etablierte Fachbegriffe als präzise Referenzpunkte in der Kommunikation mit Large Language Models",
  date: "Referenzdokument zum CAS Enterprise Architecture Management, BFH Bern — Version 1.0, 2026",
  abstract: [
    Semantic Anchors sind etablierte Fachbegriffe, Methodologien und Frameworks,
    die als präzise Referenzpunkte in der Kommunikation mit Large Language Models
    dienen. Statt umständlicher Erklärungen aktiviert ein einzelner, wohldefinierter
    Begriff ein ganzes Netzwerk an zugehörigem Wissen im Modell. Dieses Referenzdokument
    ordnet die Anchors den acht Modulen des CAS Enterprise Architecture Management zu,
    dokumentiert ihre Schlüsselautoren und aktivierten Konzepte und gibt Hinweise zu
    ihrem Einsatz in Prompts und im Lernbericht.
  ],
  authors: (
    (
      name: "Jakob Albrecht",
      affiliation: "BFH CAS Enterprise Architecture Management",
      email: "jakob.albrecht@students.bfh.ch"
    ),
  ),
)

// ── Kapitel-Stream ──────────────────────────────────────────────────────────
#include "chapters/01_konzept.typ"
#include "chapters/02_modul_anchors.typ"
#include "chapters/03_querschnitt_anchors.typ"
#include "chapters/04_anwendung.typ"

// ── Literaturverzeichnis ────────────────────────────────────────────────────
// Der Seitenumbruch erfolgt automatisch über die Heading-Regel in template.typ.
#bibliography("refs.bib", style: "ieee", title: "Literaturverzeichnis", full: true)

// ── Anhang ──────────────────────────────────────────────────────────────────
// Anhang A: Textbasierte Diagramme als Semantic Anchors (Tools und Agenten).
// Anhang B: Verwendung von KI-gestützten Tools (mit Selbständigkeitserklärung) —
//           bewusst als letzter Abschnitt, damit die Erklärung das Dokument abschliesst.
#include "chapters/05_anhang_diagramme.typ"
#include "chapters/06_anhang_ki.typ"
