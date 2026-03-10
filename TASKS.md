# TASKS.md

This file defines the implementation order for using the notebook-first template.

---

## Goal

Use Codex to turn Python library documentation into a guided learning notebook with minimal support files.

Use the Airflow example as the canonical acceptance case.

---

## Task 1 — Read and align

Read these files first:

1. `AGENTS.md`
2. `PHILOSOPHY.md`
3. `SPEC.md`
4. `TEMPLATE.md`

Understand the notebook-first contract before doing any work.

---

## Task 2 — Keep the repo minimal

Do not add lots of folders, tools, or abstractions.

V1 should stay small and understandable.
Only add what is necessary to support the file-based notebook workflow.

---

## Task 3 — Choose the mode and ask lightweight questions

Default to `fast exploration`.

Ask at most 3 short framing questions only when they materially improve the notebook.

Preferred questions:

- why the learner wants the library
- whether they want fast or in-depth exploration
- whether they want practical, conceptual, or balanced coverage

---

## Task 4 — Research and curate docs into `notes.md`

When the source material is not already present, research the library first.

Prefer:

- official documentation
- first-party examples
- high-quality tutorial material only when it clearly supports the official docs

Then reduce that material into `examples/<library>/notes.md` before generating the notebook.

---

## Task 5 — Generate the notebook

Create or refine:

- `examples/<library>/learning_lab.ipynb`

using the blueprint in `TEMPLATE.md`.

The notebook should show:

- what the library is for
- the beginner mental model
- a minimal example
- a few annotated code cells
- what to ignore for now
- one strong project idea
- next experiments and follow-up questions

---

## Task 6 — Add support files only when justified

If the notebook would be clearer with a tiny concrete project, add:

- `examples/<library>/mini_project/`

Keep it small.
The notebook remains the primary deliverable.

---

## Task 7 — Review for simplicity

Before finishing, review the repo and simplify anything unnecessary.

Ask:

- Is the notebook clearly the main artifact?
- Is the workflow obvious from `notes.md` to `learning_lab.ipynb`?
- Is this still small?
- Does the example feel useful?
- Is the Python library usage easy to understand?

---

## Success criteria

V1 is successful if:

- the repo is easy to understand
- the notebook-first philosophy is obvious
- the expected output shape is clear
- the Airflow example demonstrates the idea well
- the research-to-notebook workflow is easy to follow
- the project does not feel overbuilt
