# TEMPLATE.md

Use the following blueprint for a generated notebook-first learning lab.

---

# `repo_discovery.md` Blueprint

Use this only when GitHub repository discovery materially helps.

Keep it short.
This is a support artifact for later `notes.md`, not a learner-facing docs dump.

## Suggested sections

### 1. Title

Use:

- `# <Library> Repository Discovery`

### 2. `## Search Goal`

State what discovery work needed to answer.

### 3. `## Library / Aliases`

Record the package name and important repository aliases.

### 4. `## Auth Status`

Record whether authenticated GitHub access was available and whether public search was enough.

### 5. `## Search Passes Used`

Separate:

- canonical repository identification passes
- learner/example repository passes

### 6. `## Shortlisted Repositories`

For each serious candidate, use one subsection such as:

### `OWNER/REPO`

- `Category:` official / canonical, learner-friendly example, focused demo, or reference-only
- `Officialness evidence:`
- `Relevance to the library:`
- `Learner value:`
- `Maintenance / recency signal:`
- `Size / inspectability signal:`
- `Read first:`
- `Decision:` inspect-only or clone
- `Clone rationale:` include only when the decision is clone

### 7. `## Reference-Only Repositories`

List any repositories worth remembering but not worth deeper inspection for this lab.

### 8. `## Cautions / Limitations`

Record broad-query noise, missing access, incomplete results, or why cloning was not needed.

---

# `notes.md` Blueprint

Use the same structure in both modes.
Fast exploration stays short.
In-depth exploration expands the depth inside the same sections.

## Required sections

### 1. Title and mode

Use:

- `# <Library> Notes`
- `**Mode:** <fast exploration|in-depth exploration>`

### 2. `## What This Library Is For`

Explain the problem the library solves in plain language.

### 3. `## Why It Exists`

Explain why someone would reach for it instead of a simpler default.

### 4. `## Mental Model`

Describe the beginner model that makes the rest of the lab easier to follow.

### 5. `## Core Concepts To Understand First`

List the most important concepts a beginner should understand early.

### 6. `## Minimal Setup / Install Notes`

Keep setup short and practical.
Use `uv` by default.

### 7. `## What To Ignore For Now`

Call out advanced areas that are real but not needed for the first pass.

### 8. `## Notebook Plan / Learning Flow`

Describe the teaching path the notebook should follow.

### 9. `## Support-File Strategy`

Explain whether `repo_discovery.md`, `mini_project/`, `data/`, or `assets/` are needed and why.

### 10. `## What The Learner Should Understand By The End`

State the concrete outcomes for the first pass.

### 11. `## Project Ideas`

Include one strong project idea in fast mode and add more only when in-depth mode clearly benefits from them.

### 12. `## Sources`

List the main sources used.
Group or label official sources clearly.
Keep this section short and practical.

---

# `learning_lab.ipynb` Blueprint

## Required sections

### 1. Markdown cell — Title and purpose

Include:

- library name
- learning mode (`fast exploration` or `in-depth exploration`)
- what the learner should get from the notebook

### 2. Markdown cell — What this library is for

Explain the problem the library solves in plain language.

### 3. Markdown cell — Why it exists

Explain why someone would reach for it instead of a simpler default.

### 4. Markdown cell — Mental model

Describe the beginner model that makes the rest of the notebook easier to follow.

### 5. Markdown cell — Setup with `uv`

Keep setup short.
Only include what the learner needs for the first pass.

### 6. Code cell — First minimal example

Show the smallest useful example that makes the library feel real.

### 7. Markdown cell — Core concepts

List the most important concepts a beginner should understand first.

### 8. Markdown + code cells — Annotated examples

Use a few short examples that:

- build on each other
- explain the code clearly
- keep the library usage visible

### 9. Markdown cell — Common patterns

Show the patterns a beginner is most likely to see or use first.

### 10. Markdown cell — Common mistakes or caveats

Call out what to ignore for now and what often confuses beginners.

### 11. Markdown cell — Project idea(s)

Include:

- one main project idea in fast mode
- one or more additional ideas only in in-depth mode when justified

### 12. Markdown or code cell — Exercises / next experiments

Give 2-4 small follow-up changes the learner can try next.

### 13. Markdown cell — Suggested next questions for the agent

List concrete follow-up prompts that deepen understanding without exploding scope.

### 14. Markdown cell — Sources and next reading

Include:

- the main official docs used
- any official repository docs or examples used
- a short pointer on where the learner should go next

Keep this short.
Do not add citation clutter throughout the notebook.

---

## Support-file reads

If the notebook reads local support files:

- add one small helper cell to resolve files from likely working directories
- reuse that helper for each support file read
- raise a learner-friendly `FileNotFoundError` when a file is missing
- include the missing path, candidate paths checked, and a short recovery hint

---

## Mode guidance

### Fast exploration

Optimize for:

- speed
- clarity
- one strong mental model
- a few short code cells
- one simple project idea

### In-depth exploration

Add:

- more annotated examples
- more caveats and tradeoffs
- broader primitive coverage
- multiple project directions when useful

Do not turn this into a documentation dump.

---

## Output principles

Every generated notebook should be:

- concise
- practical
- progressive
- beginner-friendly
- readable before every cell is run

Avoid:

- giant code blocks
- disconnected snippets
- raw documentation pasted into cells
- advanced setup before the learner has a reason to care
- undocumented claims when a source can be shown instead
