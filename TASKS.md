# TASKS.md

This file defines the implementation order for the V1 starter project.

---

## Goal

Build a minimal Codex-first template that can take documentation for a library
and produce a simple first-learning-lab style output.

Use the Airflow example as the first test case.

---

## Task 1 — Read and align

Read these files first:

1. `AGENTS.md`
2. `PHILOSOPHY.md`
3. `SPEC.md`
4. `TEMPLATE.md`

Understand the purpose of the repo before implementing anything.

---

## Task 2 — Keep the repo minimal

Do not add lots of folders, tools, or abstractions.

The V1 should stay small and understandable.

Only add what is necessary to demonstrate the file-based workflow.

---

## Task 3 — Research and curate docs into `docs.md`

When the raw documentation is not already present, research the library first.

Prefer:

- official documentation
- first-party examples
- small trusted notes

Then reduce that material into a local `docs.md` file before generating any final output.

---

## Task 4 — Use Airflow as the example input

Use:

- `examples/airflow/docs.md`

as the curated documentation input for the first iteration.

This file acts as the local source material.

---

## Task 5 — Produce a generated output

Create or refine:

- `examples/airflow/output.md`

using the structure in `TEMPLATE.md`.

The output should show what the final generated result is supposed to look like:

- concise explanation
- one strong first project
- minimal lab outline
- walkthrough
- follow-up questions

---

## Task 6 — Keep notebooks optional

If a library is clearly easier to learn through a notebook flow, an optional `lab.ipynb` can be proposed.

This is not the default.

Do not add notebooks automatically.

---

## Task 7 — Review for simplicity

Before finishing, review the project and simplify anything unnecessary.

Ask:

- Is this easy to inspect?
- Is this still small?
- Is the workflow obvious from `docs.md` to `output.md`?
- Is the philosophy visible in the output?
- Does the example feel useful?
- Is the library usage clear?

---

## Success criteria

The V1 is successful if:

- the repo is easy to understand
- the philosophy is clear
- the expected output shape is clear
- the Airflow example demonstrates the idea well
- the research-to-output workflow is easy to follow
- the project does not feel overbuilt
