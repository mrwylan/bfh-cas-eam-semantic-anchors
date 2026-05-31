# Semantic Anchors für Enterprise Architecture Management

[![Compile Typst Document](https://github.com/mrwylan/bfh-cas-eam-semantic-anchors/actions/workflows/compile.yml/badge.svg)](https://github.com/mrwylan/bfh-cas-eam-semantic-anchors/actions/workflows/compile.yml)

A production-ready, Git-optimized document repository that renders the
**Semantic Anchors für Enterprise Architecture Management** reference (German, Swiss notation)
to PDF. Written in [Typst](https://typst.app) — a modern, code-first typesetting system.

The content source lives in [`doc/semantic-anchors-ea.md`](doc/semantic-anchors-ea.md); the
Typst layout in `template.typ` is reused as a documentation-generation template — drop new
content, keep the structure.

---

## Table of Contents

- [What is Typst?](#what-is-typst)
- [Quick Start](#quick-start)
- [Repository Structure](#repository-structure)
- [How to Document Your CAS Progress](#how-to-document-your-cas-progress)
- [Chapter Guide](#chapter-guide)
- [CI/CD Pipeline](#cicd-pipeline)
- [Writing Conventions](#writing-conventions)

---

## What is Typst?

[Typst](https://typst.app) is a modern typesetting system designed as a programmer-friendly
alternative to LaTeX. Key differences that matter for this project:

| Feature | Typst | LaTeX |
|---|---|---|
| Compilation speed | Near-instant (< 1 s) | Slow (multiple passes) |
| Syntax | Clean, readable | Macro-heavy |
| Error messages | Precise, line-level | Often cryptic |
| Multi-file support | Native `#include` | Requires packages |
| Git diff quality | Excellent (plain text) | Good (plain text) |
| Package ecosystem | Growing | Mature |

### Core Typst concepts you need

**Code mode vs. markup mode**  
Typst files start in _markup mode_ (prose). A `#` switches to _code mode_ for one
expression. Curly braces `{ }` open a code block; square brackets `[ ]` open a
content block (markup mode again).

```typst
// Markup mode — prose written directly
This is regular paragraph text.

// Switch to code mode with #
#strong("bold text")
#v(1em)          // vertical space
#pagebreak()

// Content block (markup inside code)
#block(fill: luma(240))[
  This text is inside a styled block.   // markup mode again
  #strong("nested code call")           // needs # here
]
```

**Headings and numbering**

```typst
= Chapter Title          // Level 1 — numbered 1.
== Section Title         // Level 2 — numbered 1.1.
=== Subsection           // Level 3 — numbered 1.1.1.
```

**Citing references**

```typst
As described by @opengroup2018togaf, the ADM consists of...
```

Add new sources to `refs.bib` using BibLaTeX format, then cite with `@key`.

**Including other files**

```typst
#include "chapters/01_intro_context.typ"
```

---

## Quick Start

### Option 1 — Typst CLI (recommended for local editing)

```bash
# Install Typst (macOS / Linux)
curl -fsSL https://typst.app/install.sh | sh

# Or via Homebrew
brew install typst

# Compile to PDF
typst compile main.typ output_document.pdf

# Watch mode — recompiles on every save
typst watch main.typ output_document.pdf
```

### Option 2 — Typst Web App

Open [typst.app](https://typst.app), create a new project, and upload the repository
files. Useful for quick edits without a local install.

### Option 3 — VS Code

Install the
[Tinymist Typst](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist)
extension for live preview, syntax highlighting, and autocompletion.

---

## Repository Structure

```
.
├── main.typ                        ← Root assembly: metadata + chapter includes + bibliography
├── template.typ                    ← Layout engine: page setup, fonts, de-CH locale, table builders
├── refs.bib                        ← Curated BibLaTeX references (IEEE style, full bibliography)
├── doc/
│   └── semantic-anchors-ea.md      ← Content source (Markdown)
├── .github/
│   └── workflows/
│       └── compile.yml             ← CI: compiles PDF on every push/PR to main
├── chapters/
│   ├── 01_konzept.typ              ← Ch. 1 Konzept + Qualitätskriterien
│   ├── 02_modul_anchors.typ        ← Ch. 2 Semantic Anchors nach CAS-Modulen (1–8)
│   ├── 03_querschnitt_anchors.typ  ← Ch. 3 Querschnitts-Anchors
│   └── 04_anwendung.typ            ← Ch. 4 Anwendungshinweise + Weiterführende Ressourcen
└── tables/
    ├── modul_01_02.typ … modul_08.typ  ← One anchor table per CAS module
    └── querschnitt.typ                 ← Cross-cutting anchors table
```

**Separation of concerns:**

- `template.typ` — page setup, fonts, the `de`/`CH` locale, and the reusable
  `anchor-table` / `cross-table` builders. Edit only for layout adjustments.
- `main.typ` — document metadata (title, abstract, author) and the include stream.
- `chapters/*.typ` — prose, one file per thematic block; each chapter `#include`s its tables.
- `tables/*.typ` — one file per table, built with the shared table builders from `template.typ`.
- `refs.bib` — curated references; rendered as a full bibliography (`full: true`).

---

## How to Document Your CAS Progress

### 1. Update your metadata

Open `main.typ` and fill in your personal details:

```typst
authors: (
  (
    name: "Your Full Name",
    affiliation: "BFH CAS Enterprise Architecture Management",
    email: "your.email@example.com"
  ),
),
```

### 2. Work chapter by chapter

Each chapter file contains placeholder sections marked with italic text:

```
_[Describe the organizational context or customer environment here.]_
```

Replace every `_[...]_` placeholder with your actual content.  
Keep placeholders you have not yet written — they make review gaps visible.

### 3. Add a reference

Append a BibLaTeX entry to `refs.bib`:

```bibtex
@book{myauthor2024,
  author    = {Last, First},
  title     = {Book Title},
  publisher = {Publisher},
  year      = {2024}
}
```

Then cite it inline:

```typst
This approach is grounded in capability-based planning @myauthor2024.
```

### 4. Insert a table or diagram placeholder

```typst
#table(
  columns: (auto, 1fr, auto),
  inset: 8pt,
  stroke: 0.5pt,
  [*Column A*], [*Column B*], [*Column C*],
  [Row 1a],     [Row 1b],     [Row 1c],
)
```

For ArchiMate diagrams, export as PNG/SVG from your modeling tool and include with:

```typst
#figure(
  image("assets/archimate-diagram.png", width: 90%),
  caption: [Target architecture — application layer view],
)
```

(Create an `assets/` folder at the root for images.)

### 5. Compile and review

```bash
typst watch main.typ output_document.pdf
```

The PDF updates live as you save. Open it side-by-side with your editor.

### 6. Commit your progress

Use semantic commits to keep your Git history readable:

```bash
git add chapters/01_intro_context.typ
git commit -m "docs(ch1): complete case study / company profile section"

git add chapters/04_learning_path.typ
git commit -m "docs(ch6): add competency shift reflection — before/after contrast"
```

---

## Chapter Guide

| File | Covers | Tables included |
|---|---|---|
| `01_konzept.typ` | Concept of Semantic Anchors, worked example, quality criteria | — |
| `02_modul_anchors.typ` | Anchors mapped to CAS modules 1–8, with intros per module | `tables/modul_01_02.typ` … `modul_08.typ` |
| `03_querschnitt_anchors.typ` | Cross-cutting anchors used across modules | `tables/querschnitt.typ` |
| `04_anwendung.typ` | How to use anchors in prompts, combining anchors, the Lernbericht; further resources | — |

> **Adding a module table:** create a new file under `tables/`, `#import` the
> `anchor-table` builder from `../template.typ`, supply four cells per row
> (Anchor · Schlüsselautoren · Aktivierte Konzepte · Anwendung im CAS), attach a
> `<tbl-…>` label, then `#include` it from the relevant chapter.

---

## CI/CD Pipeline

### Continuous Integration — `compile.yml`

Every push and pull request to `main` triggers the compile workflow:

1. **Checkout** the repository
2. **Install Typst** 0.11.1 via `typst-community/setup-typst`
3. **Compile** `main.typ` → `output_document.pdf`
4. **Upload** the PDF as a downloadable build artifact

Download the latest compiled PDF:  
`GitHub → Actions → latest workflow run → Artifacts → compiled-paper`

The PDF in the artifact is always in sync with the `main` branch —
useful for sharing progress with your supervisor without sending files by email.

### Release Workflow — `release.yml`

Pushing a semantic version tag triggers a full release:

```bash
git tag v1.0.0
git push origin v1.0.0
```

The workflow:

1. **Compiles** `main.typ` → `bfh-cas-eam-v1.0.0.pdf` (version-stamped filename)
2. **Generates** a changelog from commit messages since the last tag
3. **Creates** a GitHub Release with the PDF attached as a release asset

The release is publicly downloadable from  
`GitHub → Releases → vX.Y.Z → Assets → bfh-cas-eam-vX.Y.Z.pdf`

**Versioning convention:**

| Tag | Meaning |
|---|---|
| `v1.0.0` | First complete submission draft |
| `v1.1.0` | Significant content additions (new chapter, major revision) |
| `v1.0.1` | Minor fixes (typos, formatting, reference corrections) |
---

## Writing Conventions

**One sentence per line** — the most important convention in this repo.  
Each sentence starts on a new line. This makes Git diffs surgical:
a changed sentence shows as a single changed line, not a changed paragraph.

```typst
// ✓ Good — one sentence per line
The outside-in perspective treats customer journeys as the primary architectural driver.
Architectural decisions are evaluated by their effect on customer-facing outcomes.
This shift is supported by capability-based planning @ulrich2011.

// ✗ Avoid — paragraph as one line
The outside-in perspective treats customer journeys as the primary architectural driver. Architectural decisions are evaluated by their effect on customer-facing outcomes. This shift is supported by capability-based planning @ulrich2011.
```

**Section comments** — every chapter file begins with a comment header:

```typst
// ── Chapter N: Title ─────────────────────────────────────────────────────
```

**Placeholder discipline** — never delete a placeholder until you have real content
to replace it with. An empty section is harder to track than a visible `_[TODO]_`.
