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

`SPEC.md` is the canonical workflow and artifact contract.

---

## Task 2 — Keep the repo minimal

Do not add lots of folders, tools, or abstractions.

V1 should stay small and understandable.
Only add what is necessary to support the file-based notebook workflow.

---

## Task 3 — Choose the mode and decide whether repo discovery helps

Default to `fast exploration`.

Ask at most 3 short framing questions only when they materially improve the notebook.

If GitHub repository discovery materially helps:

- use the `github-repository-discovery` skill
- create `examples/<library>/repo_discovery.md`
- keep it inspect-first and short
- treat cloning as exceptional, not default

---

## Task 4 — Research and curate into `notes.md`

Research the library from official docs first, then official repository docs and examples.

Reduce that material into `examples/<library>/notes.md` using the contract in `SPEC.md` and the blueprint in `TEMPLATE.md`.

---

## Task 5 — Generate the notebook

Create or refine:

- `examples/<library>/learning_lab.ipynb`

using the blueprint in `TEMPLATE.md` and the contract in `SPEC.md`.

---

## Task 6 — Add support files only when justified

If the notebook would be clearer with a tiny concrete project, add:

- `examples/<library>/mini_project/`

Keep it small.
The notebook remains the primary deliverable.

---

## Task 7 — Review for simplicity

Before finishing, review the output against `SPEC.md`.

Check:

- the notebook is clearly the main artifact
- the workflow is obvious from support artifacts into `notes.md` and then into the notebook
- `repo_discovery.md` is optional and stays curated if it exists
- sources are clear and lightweight
- support files are minimal and justified
- the result does not feel overbuilt

---

## Success criteria

V1 is successful if:

- the repo is easy to understand
- the notebook-first philosophy is obvious
- the expected output shape is clear
- the Airflow example demonstrates the idea well
- the optional repo-discovery-to-notes-to-notebook workflow is easy to follow when used
- the project does not feel overbuilt
