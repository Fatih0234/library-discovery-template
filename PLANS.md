# Notebook-First V1 Plan

## Goal

Keep this repository as a small Codex-first template for learning a Python library through one guided notebook.

The workflow is:

1. research the library
2. write curated notes to `notes.md`
3. generate `learning_lab.ipynb`
4. add a tiny `mini_project/` only when it helps the notebook teach better

## V1 priorities

- make the notebook-first philosophy obvious
- keep the workflow file-based
- make the expected output shape easy to inspect
- use Airflow as the canonical acceptance case
- avoid platform-style abstractions

## What belongs in V1

- root docs that explain the workflow
- one notebook blueprint
- one completed Airflow example
- minimal support files around that notebook

## What does not belong in V1

- generator frameworks
- schema systems
- large folder trees
- automation that is harder to understand than the notebook

## Review rule

If a new file or abstraction does not make the notebook workflow clearer, it should probably not be added.
