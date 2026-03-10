# TEMPLATE.md

Use the following blueprint for a generated notebook-first learning lab.

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
