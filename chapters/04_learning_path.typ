// ── Chapter 6 & 7: Methodological Reflection and Conclusion ─────────────────

= Methodological Reflection and the Individual Learning Path

#block(
  width: 100%,
  inset: (x: 1em, y: 0.8em),
  radius: 4pt,
  fill: luma(245)
)[
  *Author's Note:*
  This chapter is the critical academic engine of the BFH documentation.
  The sections below are intentionally written in the first person.
  Do not describe what was done — critically evaluate how the method performed
  and what that reveals about your current architectural thinking.
]

== Evaluation of EAM Frameworks
The TOGAF ADM provided structural clarity during the early phases of the project, particularly in Phase A (Architecture Vision) and Phase B (Business Architecture).
Its value was highest when the team needed a shared vocabulary to negotiate scope boundaries with stakeholders who had no prior architecture exposure.

However, the ADM's phase-gate model created friction in a collaborative setting where the team was simultaneously discovering requirements and designing solutions.
The strict sequencing discouraged the iterative refinement cycles that the group naturally gravitated toward.
_[Expand: Where specifically did the formalism help? Where did it introduce modeling overhead that the team had to work around?]_

ArchiMate 3.1 delivered precision in cross-layer traceability — linking motivation elements to business and application layers in a single coherent view.
The challenge was the steep learning curve for team members with a project management rather than architecture background.
Several notation choices (e.g., the distinction between `ApplicationFunction` and `ApplicationService`) were not intuitive and required repeated clarification during joint modeling sessions.
_[Expand: Which ArchiMate viewpoints were genuinely useful? Which were abandoned in practice?]_

== Dynamics of Collaborative Architecture
Architectural decisions in a team setting are not purely technical: they are social negotiations mediated by professional identity, organizational hierarchy, and the time pressure of workshop formats @bass2012.
The most contested decisions in this project were not technology choices but scope boundaries — specifically, which capabilities fell inside the collaboration mandate and which were deferred to the sponsoring department.

The group reached consensus through [describe mechanism: dot voting / structured debate / escalation to sponsor].
In retrospect, the consensus mechanism was effective at resolving surface disagreements but tended to suppress minority technical concerns that later re-emerged as implementation risks.
_[Expand: Give a concrete example of a decision where group dynamics shaped the architectural outcome. What would the individually optimal decision have been, and why did the group converge elsewhere?]_

== Individual Competency Shift
At the start of the CAS, my primary frame for architectural work was [describe prior mental model: e.g., solution architecture, infrastructure design, software development].
Technical quality — performance, scalability, maintainability — was the dominant evaluation criterion I applied to any architectural proposal.

The most significant competency shift during the program was learning to evaluate architecture from a business value and lifecycle cost perspective before engaging with technical detail.
The Outside-In mapping exercise made this concrete: framing the architectural problem as a customer journey problem forced me to articulate value in terms that non-technical stakeholders could evaluate and challenge.

My approach to technical debt has also evolved.
Previously, I treated debt as a consequence of delivery pressure — a necessary compromise.
The CAS reframed debt as a strategic variable with explicit future cost implications that can and should be surfaced in executive-level reporting @fowler2018 @zachman1987.
_[Expand: Identify two or three specific moments in the program where your thinking shifted. Be precise about what you believed before and what you believe now.]_


// ── Chapter 7: Conclusion and Outlook ───────────────────────────────────────

= Conclusion and Outlook

== Summary of Findings
This documentation has traced a complete Outside-In to Inside-Out arc:
a customer journey was mapped to business capabilities, capabilities were traced to the application landscape, and the resulting friction zones were resolved in a target architecture with an explicit migration roadmap.

The key findings are:

+ The primary source of customer journey friction is architectural rather than process-related, concentrated in [describe core finding].
+ Business Capability Management proved to be the most durable abstraction: it survived three major scope changes during the collaboration phase without requiring rework.
+ The target architecture reduces the ten-year total cost of ownership of the affected capabilities by approximately [estimated saving], contingent on Phase 1 master data governance being completed on schedule.

The individual learning path documented in Chapter 6 demonstrates a verifiable shift from technically-centered to value- and lifecycle-centered architectural reasoning — the core competency the CAS EAM curriculum is designed to develop.

== Future Outlook
The practices developed during this CAS will be injected into my day-to-day professional environment in three concrete ways.

First, I will introduce capability-based investment proposals as a standard format when engaging with senior management on IT spending decisions.
The canvas format developed in Section 5.2 is immediately applicable without requiring stakeholders to adopt ArchiMate or TOGAF literacy.

Second, I will establish a lightweight technical debt registry for the systems under my architectural stewardship, using the friction zone scoring model from Section 4.3 to maintain a prioritized and visible backlog of lifecycle risk.

Third, I will apply the Outside-In framing as a default entry point for any new architectural initiative — grounding the problem statement in a customer or user journey before engaging with system design.
This is the most transferable methodological output of the CAS: a habit of perspective, not a tool or notation system.

_[Add a final paragraph reflecting on the limits of what was achieved and what remains open — BFH reviewers value intellectual honesty about the boundaries of the work.]_
