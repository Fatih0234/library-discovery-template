# Notebook-First Python Library Exploration Template

This repository is a small Codex-first template for turning Python library documentation into a guided Jupyter notebook.

The repo is intentionally lean. It is a file-based workflow, not a generator framework or orchestration layer.

## Start here

- Read `PHILOSOPHY.md` for the teaching mindset.
- Read `SPEC.md` for the normative workflow and artifact contract.
- Read `TEMPLATE.md` for the artifact blueprints.
- Read `AGENTS.md` and `TASKS.md` for repo-local operating guidance.

## Default workflow

`official docs -> optional repo_discovery.md -> notes.md -> learning_lab.ipynb -> optional mini_project/`

- `learning_lab.ipynb` is the primary deliverable.
- `notes.md` is the curated research source of truth.
- `repo_discovery.md` is an optional support artifact for repository selection and inspection when GitHub discovery materially helps.
- `mini_project/` is optional support material, not the main product.

## Operating constraints

- Python libraries only
- notebook-first, not markdown-first
- official docs first, then official repository docs and examples
- inspect-first for repository discovery; cloning is exceptional
- practical over exhaustive
- no heavy framework or orchestration layer

See `examples/airflow/` for the canonical example set, including an optional `repo_discovery.md`.
