# V1 Plan

## Goal

Keep this repository as a small Codex-first template for learning a library through one good project.

The workflow is:

1. research the library
2. write curated notes to `docs.md`
3. generate `output.md`
4. optionally suggest a notebook only when it clearly helps

## V1 priorities

- make the philosophy obvious
- keep the workflow file-based
- make the expected output shape easy to inspect
- use Airflow as the first acceptance case
- avoid platform-style abstractions

## What belongs in V1

- root docs that explain the workflow
- one template for the generated output
- one completed Airflow example
- optional notebook guidance, not notebook-first infrastructure

## What does not belong in V1

- orchestration layers
- prompt packs
- schema systems
- large folder trees
- framework-heavy scaffolding
- automation that is harder to understand than the output itself

## Review rule

If a new file or abstraction does not make the workflow clearer, it should probably not be added.
