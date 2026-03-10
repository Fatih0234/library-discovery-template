# Notebook-First Python Library Exploration Template

This repository is a small Codex-first template for learning a Python library through a guided Jupyter notebook.

The repo is intentionally lean. It is not a generator framework, orchestration system, or generalized multi-language platform. It is a file-based workflow for turning official documentation into a beginner-friendly learning lab.

## How to use it

1. Read `AGENTS.md`, `PHILOSOPHY.md`, `SPEC.md`, `TEMPLATE.md`, and `TASKS.md`.
2. Choose a Python library and default to `fast exploration` unless the learner clearly wants more depth.
3. Ask at most 3 short framing questions only when they will materially improve the notebook.
4. Research the library from official docs and first-party examples.
5. Reduce that research into `examples/<library>/notes.md`.
6. Generate `examples/<library>/learning_lab.ipynb` as the primary learning artifact.
7. Add `examples/<library>/mini_project/` only when it makes the notebook easier to understand or extend.

## Default workflow

`research -> notes.md -> learning_lab.ipynb -> optional mini_project/`

- `notes.md` is the local source of truth for curated research
- `learning_lab.ipynb` is the learner-facing notebook
- `mini_project/` is supporting material, not the main deliverable

## What good output looks like

- one notebook that mixes explanation, runnable code, and small experiments
- a clear mental model of why the library exists
- one strong first project idea
- practical setup guidance using `uv`
- a few next experiments and follow-up questions for the agent

## Constraints

- Python libraries only
- notebook-first, not markdown-first
- official docs and first-party examples first
- practical over exhaustive
- no heavy automation or extra framework layers

See `examples/airflow/` for the canonical notebook-first example.
