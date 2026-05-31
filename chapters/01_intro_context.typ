// ── Chapter 1 & 2: Introduction, Context, and Theoretical Foundation ────────

= Introduction and Context

== Objective and Scope
This document fulfills two explicit requirements of the BFH CAS Enterprise Architecture Management program.
First, it documents the architectural artifact produced during the collaborative project phase.
Second, it records the individual learning path, capturing the evolution of architectural thinking over the duration of the CAS.
The dual-purpose structure reflects BFH's emphasis on Praxis-Transfer: the ability to ground theoretical models in real organizational contexts and to critically evaluate that transfer.

== Case Study / Company Profile
Amira is planning to found a catering business in Switzerland.
She has a rough concept, but no experience with the formal requirements of starting a hospitality business.
Business registration, financing, resource planning, and procurement, she knows these topics are relevant, but does not know how to approach them.

GastroStart is a fictional portal that guides founders in the hospitality sector through the key phases of business formation: from initial orientation through registration, business concept, and operating permit to financing and the first contract.

This customer journey serves as the starting point for the modelling exercise.
From it, relevant business objects are identified with their states and business events, and mapped in ArchiMate.

== Methodological Approach
The work applies the TOGAF Architecture Development Method (ADM) as its primary process framework, complemented by ArchiMate 3.1 as the visual modeling language @opengroup2018togaf @opengroup2019archimate.
Where the formal notation introduced unnecessary overhead for stakeholder communication, lightweight canvas models were used as an intermediate representation.
The Outside-In paradigm — anchoring architectural change in customer experience rather than internal IT concerns — serves as the overarching design philosophy throughout @ross2006enterprise.


// ── Chapter 2: Theoretical Foundation ───────────────────────────────────────

= Theoretical Foundation: Modern EAM Paradigms

== The Outside-In Perspective
Traditional enterprise architecture practice has historically been driven by an inside-out orientation:
technology inventories, system rationalization, and infrastructure optimization are the primary inputs.
The outside-in perspective inverts this logic, treating the customer journey as the primary architectural driver @temkin2010.
Architectural decisions are evaluated not by their internal technical elegance but by their measurable effect on customer-facing outcomes.
This shift is supported by capability-based planning, which provides a stable abstraction layer between volatile market demands and the slower-moving application landscape @ulrich2011.

A customer journey describes the complete, end-to-end sequence of experiences a defined persona undergoes when interacting with an organization — from initial awareness through active engagement to post-interaction evaluation @lemon2016.
Decomposed into discrete touchpoints, it captures both the operational dimension (what the customer does) and the emotional dimension (how the customer perceives the interaction) at each stage.
In the context of Enterprise Architecture Management, the customer journey functions as the primary analytical driver: architectural decisions are evaluated not by their internal technical quality but by their measurable effect on customer-facing outcomes @lemon2016 @temkin2010.

== Business Capability Management
A business capability defines what an organization does, independent of how it is currently implemented @ulrich2011.
Capabilities serve as the immutable anchor point that connects customer strategy to IT execution because they remain stable across organizational restructurings and technology refresh cycles.
In this work, capability mapping follows the level-three decomposition recommended by the Business Architecture Guild, distinguishing strategic, core, and enabling capabilities @biz_arch_guild2017.

== Architectural Guardrails and Governance
Without deterministic engineering constraints, architectural decisions accumulate as undocumented technical debt that compounds over ten- to fifteen-year IT life-cycle horizons @fowler2018.
Guardrails — pre-approved patterns, technology standards, and decommission schedules — reduce decision latency at the team level while preserving coherence at the portfolio level.
Governance in this context is not a bureaucratic gate but a feedback mechanism that keeps local decisions aligned with long-term strategic intent @zachman1987.
