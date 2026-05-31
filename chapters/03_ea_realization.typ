// ── Chapter 4 & 5: EA Realization and Target Architecture ───────────────────

= The Inside-Out Mapping: Enterprise Architecture Realization

== Business Architecture Layer
Each touchpoint identified in the customer journey was traced to one or more business capabilities using the capability map developed for [Organization Name].
The mapping reveals which capabilities are customer-critical — directly affecting journey quality — and which are enabling — supporting operational continuity without direct customer visibility.

#table(
  columns: (auto, auto, auto),
  inset: 8pt,
  align: (left, left, left),
  stroke: 0.5pt,
  [*Customer Touchpoint*], [*Business Capability*], [*Capability Type*],
  [_[Touchpoint A]_], [_[Capability X]_], [Core],
  [_[Touchpoint B]_], [_[Capability Y]_], [Enabling],
  [_[Touchpoint C]_], [_[Capability Z]_], [Strategic],
)

The capability-to-process mapping beneath this table is documented separately in the ArchiMate model
(see appendix or attached model file).
Process decomposition follows TOGAF ADM Phase B conventions @opengroup2018togaf.

== Application and Data Architecture Layer
The application landscape was surveyed against the capability map to identify which systems currently support each customer-critical capability.
Master data ownership was a primary analytical lens: fragmented ownership of customer master data across [N] systems was identified as a root cause of [specific pain point].

```
[Customer Touchpoint] → [Business Capability] → [Application Service] → [Data / Infrastructure]
      (Outside-In)                                       (Inside-Out)
```

Key findings from the application layer analysis:

- *Master data fragmentation*: Customer identity data is held in [System A], [System B], and [System C] without a canonical master, causing reconciliation errors at [Touchpoint X].
- *Integration debt*: Point-to-point integrations between [System D] and [System E] create a brittle dependency with no documented SLA.
- *Shadow IT*: [Department] maintains an unregistered [tool type] that holds authoritative data for [Capability Y], outside the governed application portfolio.

== Technical Debt Alignment
Technical debt is here defined operationally as the future cost imposed by present architectural decisions @fowler2018.
The following friction zones were identified as carrying significant ten-year lifecycle risk:

+ *[Friction Zone 1]*: [Description, estimated maintenance cost trajectory, risk rating]
+ *[Friction Zone 2]*: [Description, estimated maintenance cost trajectory, risk rating]
+ *[Friction Zone 3]*: [Description, estimated maintenance cost trajectory, risk rating]

Each friction zone was scored on two axes: customer journey impact (direct vs. indirect) and remediation complexity (low / medium / high).
This scoring provides the prioritization logic for the target architecture roadmap in the following chapter.


// ── Chapter 5: Target Architecture and Transformation Roadmap ───────────────

= Target Architecture and Transformation Roadmap

== Target State Design
The target architecture addresses the three friction zones identified in the as-is analysis.
The design follows the principle of minimal viable intervention: only changes that directly resolve a customer-journey pain point or eliminate a high-risk technical debt item are included in the baseline target state.
Speculative improvements are recorded in the backlog but excluded from the roadmap to preserve investment focus.

Core design decisions in the target state:

- *[Decision 1]*: [Rationale and expected outcome]
- *[Decision 2]*: [Rationale and expected outcome]
- *[Decision 3]*: [Rationale and expected outcome]

_[Insert ArchiMate target state diagram or capability heat-map here.]_

== Strategic Alignment Canvas
The one-page Strategic Alignment Canvas below maps the proposed architectural changes against the organization's stated strategic objectives.
This format is adapted from the Business Model Canvas to operate at the architectural layer, making the strategic rationale legible to executive stakeholders without requiring ArchiMate literacy @osterwalder2010.

#table(
  columns: (1fr, 1fr),
  inset: 10pt,
  stroke: 0.5pt,
  [*Strategic Objective*], [*Architectural Initiative*],
  [_[Objective 1]_], [_[Initiative A]_],
  [_[Objective 2]_], [_[Initiative B]_],
  [_[Objective 3]_], [_[Initiative C]_],
)

== Migration and Cost Considerations
The transformation is structured as three sequential phases aligned with TOGAF ADM Phase F (Migration Planning) @opengroup2018togaf.

*Phase 1 — Foundation (0–6 months)*:
Establish the master data governance model and decommission the highest-risk point-to-point integration.
Estimated investment: [range].

*Phase 2 — Consolidation (6–18 months)*:
Migrate shadow IT data to the governed application portfolio and implement the target integration pattern.
Estimated investment: [range].

*Phase 3 — Optimization (18–36 months)*:
Retire legacy systems confirmed as redundant after Phase 2 consolidation.
Residual operating cost reduction: [estimated saving per year].

Long-term operating cost is the primary financial metric: the target architecture is evaluated not by project delivery cost alone but by its effect on the ten-year total cost of ownership of the affected capabilities.
