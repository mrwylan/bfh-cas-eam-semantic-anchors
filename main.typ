#import "template.typ": conf

#show: conf.with(
  title: "Learning Path Documentation: Enterprise Architecture Management in Practice",
  subtitle: "Connecting Customer Journeys to Capabilities and Application Landscapes",
  date: "BFH CAS Enterprise Architecture Management (EAM), 2026",
  abstract: [
    This document serves a dual purpose: it presents the architectural artifact developed
    during the collaborative phase of the CAS EAM program, and it traces the individual
    learning path of the author throughout the course.
    Anchored in the Outside-In paradigm, the work maps a concrete customer journey down
    through Business Capability Management to the underlying application and data landscape.
    The final chapters provide a critical methodological reflection and an honest account
    of the competency shift achieved during the program.
  ],
  authors: (
    (
      name: "Jakob Albrecht",
      affiliation: "BFH CAS Enterprise Architecture Management",
      email: "jakob.albrecht@students.bfh.ch"
    ),
  ),
)

// ── Chapter Stream ──────────────────────────────────────────────────────────
#include "chapters/01_intro_context.typ"
#include "chapters/02_customer_journey.typ"
#include "chapters/03_ea_realization.typ"
#include "chapters/04_learning_path.typ"

// ── References ──────────────────────────────────────────────────────────────
#bibliography("refs.bib", style: "ieee", title: "References")
