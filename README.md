# Library Lab Builder

Library Lab Builder is a small template for using Codex to understand a library before diving into it deeply.

The repo is intentionally simple. It is not a platform, generator framework, or orchestration system. It is a file-based workflow for turning documentation into a small first-learning-lab.

## How to use it

1. Start with `AGENTS.md`, `PHILOSOPHY.md`, `SPEC.md`, `TEMPLATE.md`, and `TASKS.md`.
2. Use Codex Plan Mode to research the library and save curated notes to `examples/<library>/docs.md`.
3. Generate `examples/<library>/output.md` from those notes using the structure in `TEMPLATE.md`.
4. Only consider `examples/<library>/lab.ipynb` if the library is clearly better learned through a notebook workflow.

If the library is Python-related, use `uv` by default for environment creation and package handling.

## File flow

`research -> docs.md -> output.md`

- `docs.md` is the local source of truth for the curated documentation notes
- `output.md` is the learner-facing brief and lab outline
- `lab.ipynb` is optional, not default

## What good V1 output looks like

- one strong first project
- 3-5 concepts
- minimal setup
- clear files to inspect first
- a short walkthrough
- a few next questions to ask the agent

See `examples/airflow/` for the first test case.
