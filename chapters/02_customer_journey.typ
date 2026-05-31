// ── 02_customer_journey.typ — Chapter 3: Collaboration Phase: Outside-In Mapping ──

= The Collaboration Phase: Outside-In Mapping

== Customer Journey Definition
Building on the case introduced in Section 1.2, the collaboration phase maps Amira's journey across five phases defined by the GastroStart portal.
The journey was developed collaboratively across participants from four organisations — Transgourmet Schweiz AG, FINNOFLEET Schweiz, the Bundeskanzlei, and DV Bern — each contributing domain expertise from their respective institutional contexts.

#figure(
  caption: [Persona Profile: Amira],
  block(
    width: 100%,
    stroke: 0.5pt,
    radius: 4pt,
    clip: true,
  )[
    #block(
      width: 100%,
      fill: luma(60),
      inset: (x: 1em, y: 0.6em),
    )[
      #text(fill: white, weight: "bold", size: 1.05em)[Persona: Amira]
    ]
    #block(inset: 1em)[
      #grid(
        columns: (3cm, 1fr),
        row-gutter: 0.55em,
        [*Role*],         [Prospective founder, catering sector],
        [*Context*],      [No industry background; rough business concept in place],
        [*Goals*],        [Found a legally compliant catering business; miss nothing essential],
        [*Frustrations*], [Opaque administrative processes; fear of costly mistakes; no professional network],
        [*Need*],         [Step-by-step guidance across registration, permits, financing, and procurement, in one place],
      )
    ]
  ]
) <persona-amira>

The journey was structured across five phases:

+ *Initial Orientation* — Amira discovers GastroStart, selects her canton and business type, and receives a tailored checklist of requirements.
+ *Registration* — she authenticates via eID, creates a founder profile, and establishes her account on the platform.
+ *Operating Permit* — GastroStart guides her through the canton-specific permit process, coordinating submission to the relevant authorities.
+ *Financing* — the portal connects her to banking partners for credit assessment and business account opening.
+ *First Contract* — Amira establishes her supplier account with Transgourmet and places her first order.

Each phase was decomposed into discrete touchpoints capturing what Amira does, which system she interacts with, her emotional state, and where the current or target architecture creates friction or opportunity.
@fig-journey-map provides the consolidated journey map across all five phases.

#figure(
  caption: [Customer Journey Map: Amira on GastroStart],
  block(width: 100%, breakable: true)[
    #set text(size: 7.5pt)
    #table(
      columns: (2.3cm, 2.1cm, 2.3cm, 2.3cm, 1.2cm, 2.4cm, 2.4cm),
      inset: 5pt,
      stroke: 0.4pt,
      fill: (x, y) => if y == 0 { luma(210) } else if calc.odd(y) { luma(248) } else { white },
      align: (left, left, left, left, center, left, left),

      [*Phase*], [*Action*], [*Touchpoint*], [*Thought / Need*], [*Emo.*], [*Pain Point*], [*Opportunity*],

      [*1. Initial \ Orientation*],
      [Searches "Gastronomie gründen Schweiz"; selects Kanton Bern, Betriebstyp Catering],
      [Search engine → landing page; canton selector],
      ["Does this cover my canton specifically?"],
      [↓ −1],
      [Requirements vary per canton; no digital differentiation between cantons],
      [Canton-aware onboarding: dynamic requirement list per canton × business type],

      [*2. Registration*],
      [Creates account via eID; fills founder profile with canton and Gemeinde],
      [eID login (Bundeskanzlei EIAM); profile wizard (DV Bern)],
      ["Why do I need eID? I don't have one yet."],
      [→ 0],
      [eID not universally adopted; no fallback for users without eID],
      [Progressive identity verification; allow partial profile without eID],

      [*3. Operating \ Permit*],
      [Works through permit checklist; submits cantonal application],
      [GastroStart wizard (DV Bern); Behörden-API (Bundeskanzlei); cantonal authority systems],
      ["Which canton rules apply? How long will this take?"],
      [↓↓ −2],
      [Canton systems have heterogeneous digitalisation levels; some require physical submission. _Line of Failure:_ analogue cantonal process breaks digital journey],
      [Integrated canton-specific permit guide; status tracking; explicit fallback to print where API unavailable],

      [*4. Financing*],
      [Selects bank partner; credit assessment runs in background; receives IBAN],
      [Bank selection UI; FINNOFLEET credit API; IBAN dashboard],
      ["What if I'm rejected? Will I know why?"],
      [↓ −1],
      [Credit decision returned without explanation; no link to alternative CH funding programmes],
      [Transparent scoring feedback; pre-filled templates for CH funding programmes],

      [*5. First \ Contract*],
      [Opens Transgourmet account via portal; browses catalogue; places first order],
      [Transgourmet catalogue API; order workflow (DV Bern); order confirmation],
      ["Are new-customer conditions competitive?"],
      [↑↑ +2],
      [New-customer pricing less favourable; supplier contract may require physical signature],
      [Negotiated onboarding conditions for portal-referred founders; digital contract signing],
    )
  ]
) <fig-journey-map>

The emotional curve across the journey reveals two structurally significant points.
Phase 3 (Operating Permit) marks the lowest sentiment at −2, driven not by process design failure but by the heterogeneous digitalisation level of cantonal authority systems — an architectural constraint outside the platform's direct control.
Phase 5 (First Contract) reaches the peak at +2, but the transition from the digital portal to a physical supplier contract represents a residual analogue gap that the target architecture must address @stickdorn2011.

Both extremes are direct inputs for the pain point analysis in @sec-pain-points and the Business Object analysis in @sec-business-objects.


== Pain Points and Value Drivers <sec-pain-points>
The journey mapping exercise surfaced structural bottlenecks where customer experience deteriorates due to underlying system limitations rather than process design failures.
This distinction is architecturally significant: process failures can be resolved through training and governance, whereas system-induced friction requires deliberate architectural intervention @temkin2010.

*1. Regulatory fragmentation (Phase 3, sentiment −2)*

Administrative requirements vary by canton and are partially inaccessible through digital channels.
Of the 18 Business Objects identified across the journey (see @sec-business-objects), six are hybrid and two remain fully analogue — both concentrated in Phase 3.
The root cause is not absent regulation but absent API: cantonal systems range from fully digital (e.g. Zürich, Basel-Stadt) to analogue-only (e.g. Wallis), with no federal consolidation layer.
This creates a _Line of Failure_ — a point at which the digital journey structurally cannot continue without manual intervention.

*2. Identity verification barrier (Phase 2, sentiment 0)*

The mandatory eID requirement presupposes an infrastructure that is not yet universally adopted in Switzerland.
Founders without eID face a registration barrier at the first meaningful interaction with the platform.

*3. Financing opacity (Phase 4, sentiment −1)*

Amira has no visibility into the credit scoring logic and receives no actionable guidance if the assessment returns an unfavourable result.
The capability gap is not in the assessment itself but in the explanation interface between FINNOFLEET's scoring model and the GastroStart user experience.

*4. Residual analogue touchpoints (Phase 5, sentiment gap)*

The supplier contract with Transgourmet may require physical signature, breaking the fully digital journey at its final and otherwise most positive stage.

#figure(
  caption: [Pain Points and Architectural Value Drivers],
  block(width: 100%)[
    #set text(size: 9pt)
    #table(
      columns: (3.2cm, 3.5cm, 1fr),
      inset: 7pt,
      stroke: 0.4pt,
      fill: (x, y) => if y == 0 { luma(210) } else if calc.odd(y) { luma(248) } else { white },

      [*Pain Point*], [*Value Driver*], [*Architectural Response*],

      [Regulatory fragmentation],
      [Consolidated, canton-aware permit guidance],
      [Canton × business-type rule matrix maintained by DV Bern; explicit fallback process for analogue cantons],

      [Identity verification barrier],
      [Progressive onboarding without hard eID dependency],
      [Staged identity verification; eID optional at registration, mandatory only at permit submission],

      [Financing opacity],
      [Transparent, explainable credit assessment],
      [UX layer over FINNOFLEET API: plain-language decision feedback; alternative funding links],

      [Analogue contract gap],
      [Fully digital supplier onboarding],
      [Digital contract signing integrated into Transgourmet portal connector],
    )
  ]
) <tbl-value-drivers>


== Business Object Analysis <sec-business-objects>
The journey mapping was extended into a Business Object analysis following the dematerialisation framework introduced by @normann2001 and further developed by @tercek2015.
The framework evaluates information artefacts on four dimensions: _liquidity_ (how freely the object can flow across organisational boundaries), _unbundling_ (whether it can be separated from its physical carrier), _density_ (value concentration per unit of information), and _vaporisation potential_ (degree to which the object can be fully dematerialised into a digital service).

Across the five journey phases, 18 Business Objects were identified, classified by ArchiMate kernel type, ownership, and current dematerialisation level.

#figure(
  caption: [Business Object Inventory: GastroStart],
  block(width: 100%, breakable: true)[
    #set text(size: 7.5pt)
    #table(
      columns: (0.5cm, 3.3cm, 1.9cm, 1.1cm, 2.4cm, 1.8cm, 1fr),
      inset: 5pt,
      stroke: 0.4pt,
      fill: (x, y) => if y == 0 { luma(210) } else if calc.odd(y) { luma(248) } else { white },
      align: (center, left, left, center, left, center, left),

      [*\#*], [*Business Object*], [*Kernel Type*], [*Ph.*], [*Owner*], [*Dematerialisation*], [*Notes*],

      [1],  [Kantonsanforderungskatalog],   [Document],    [1], [DV Bern],        [95 %],  [Fully digital rule matrix; maintenance risk at legislative change],
      [2],  [Betriebstyp-Profil],           [Entity],      [1], [DV Bern],        [100 %], [Core data object; basis for all downstream processes],
      [3],  [Bewilligungsübersicht],         [Document],    [1], [DV Bern],        [60 %],  [Completeness depends on cantonal data quality],
      [4],  [eID-Identitätsnachweis],        [Document],    [2], [Bundeskanzlei],  [100 %], [Fully digital; risk: user without eID],
      [5],  [Gründungsprofil],              [Entity],      [2], [DV Bern],        [100 %], [Persistent platform object],
      [6],  [Nutzerkonto],                  [Entity],      [2], [DV Bern],        [100 %], [eID-linked; enables process resumption],
      [7],  [Gewerbebewilligung],           [Contract],    [3], [Kanton],         [55 %],  [Canton-dependent; ZH digital, VS analogue],
      [8],  [Lebensmittelkontroll-Anmeldung],[Document],   [3], [Kanton],         [45 %],  [Partially postal; high mediation-break risk],
      [9],  [Alkoholbewilligung],           [Contract],    [3], [Kanton],         [30 %],  [Frequently requires physical presence — highest analogue risk],
      [10], [Handelsregistereintrag],       [Contract],    [3], [Bund/Kanton],    [85 %],  [Largely digital via Zefix/EHRA],
      [11], [Bewilligungsstatus],           [Event],       [3], [DV Bern],        [65 %],  [Digital in portal; source data often manual],
      [12], [Kantonales Formular],          [Document],    [3], [Kanton],         [25 %],  [Largest dematerialisation gap in the journey],
      [13], [Bonitätsprüfung],             [Data Object], [4], [FINNOFLEET],     [100 %], [Fully automated; risk: opaque result],
      [14], [Geschäftskonto (IBAN)],        [Entity],      [4], [FINNOFLEET],     [100 %], [Instant digital issuance via banking API],
      [15], [Kreditantrag],                [Contract],    [4], [FINNOFLEET],     [70 %],  [Largely digital; signature may be physical],
      [16], [Lieferantenkonto],            [Entity],      [5], [Transgourmet],   [100 %], [Fully digital via catalogue API],
      [17], [Bestellung],                  [Document],    [5], [Transgourmet],   [100 %], [Fully digital order flow],
      [18], [Liefervertrag (Neukunde)],    [Contract],    [5], [Transgourmet],   [65 %],  [Framework contract; physical signature risk],
    )
  ]
) <tbl-business-objects>

Of the 18 objects, 10 are fully dematerialised (≥ 80 %), 6 are hybrid (40–79 %), and 2 remain substantially analogue (< 40 %).
Both analogue objects are concentrated in Phase 3 and owned by cantonal authorities — confirming that regulatory fragmentation is the primary architectural constraint of the journey, not a process design failure.

In the ArchiMate model, Business Objects are associated with Business Processes via _Access_ relationships (read or write), making their ownership and state transitions traceable across layers.


== Collaborative Synthesis
Architectural decisions in team settings are not purely analytical — they are social negotiations shaped by professional background, prior experience, and differing mental models of what architecture is for @bass2012.

*Group composition:*
The collaboration involved participants from four organisations: Transgourmet Schweiz AG (Grosshandel), FINNOFLEET Schweiz (standardisierte und individuell entwickelte Lösungen für Banken, Pensionskassen und Versicherungen), the Bundeskanzlei (öffentliche Verwaltung), and DV Bern (Softwareentwicklung öffentliche Hand).
This breadth reflected the deliberate design of the GastroStart case: a product whose delivery chain spans private logistics, regulated financial services, federal identity infrastructure, and public-sector software delivery.

*Divergence:*
Two structural tensions emerged early.
Technically oriented participants gravitated toward data flows and API boundaries, framing the journey as an integration problem between four organisational systems.
Business-oriented participants focused on the emotional reality of Amira's experience, arguing that the Phase 3 sentiment collapse (−2) was the central architectural problem regardless of its technical cause.
The most contested question was whether the cantonal heterogeneity in Phase 3 was _in scope_ for the platform architecture or should be classified as an external constraint and deferred.

*Consensus mechanism:*
The group resolved the tension by separating the analytical levels: the customer journey was maintained as a pure Outside-In artefact (Amira's experience, regardless of cause), while the Service Blueprint introduced the Inside-Out layer (what each organisation does backstage) @stickdorn2011.
This separation — which maps directly to the ArchiMate distinction between Business Process (journey) and Application Service (backstage) — allowed both perspectives to contribute without overwriting each other.

*Synthesis outcome:*
The resulting journey map (@fig-journey-map) is a consensus artefact.
The decision to treat cantonal analogue processes as a _Line of Failure_ rather than an out-of-scope external constraint was the most consequential design choice: it kept the architectural problem honest and prevented the group from artificially inflating the dematerialisation score by excluding the hardest cases.
This negotiated quality is what gives the artefact its architectural legitimacy: it represents a shared understanding, not a single participant's optimistic projection.

#block(
  width: 100%,
  inset: (x: 1em, y: 0.8em),
  radius: 4pt,
  stroke: 0.4pt,
  fill: luma(250),
)[
  *Personal note:*
  My individual view diverged from the group consensus on one point: I would have classified the eID barrier (Phase 2) as a higher-severity pain point than the group assigned it (sentiment 0).
  The reasoning: a failed registration blocks all downstream phases, making it a higher-risk structural dependency than the Phase 3 analogue gaps — which, while more visible emotionally, can be partially mitigated by the portal's fallback process.
  The group prioritised emotional intensity over structural dependency risk.
  Both framings are architecturally defensible; the difference reveals a genuine tension between user-experience-centred and resilience-centred architectural evaluation criteria.
]
