# SPEC.md

## Project name

Notebook-First Python Library Exploration Template

## Purpose

This project is a Codex-assisted starter template for turning Python library documentation into a small, guided learning notebook.

The goal is not to build a platform or an automation stack.
The goal is to produce one strong `.ipynb` learning lab that combines explanation, notes, runnable code, mini experiments, and a practical project direction.

---

## V1 workflow contract

The V1 workflow is file-based:

1. choose a Python library
2. optionally ask up to 3 short framing questions
3. research official docs and first-party examples
4. save curated research in `examples/<library>/notes.md`
5. generate `examples/<library>/learning_lab.ipynb`
6. optionally add `examples/<library>/mini_project/` only when it materially helps the notebook

The primary deliverable is `learning_lab.ipynb`.

---

## User adaptation behavior

The system may ask a few lightweight questions when that will improve the notebook.

Preferred questions:

- why the learner wants this library
- whether they want `fast exploration` or `in-depth exploration`
- whether they want practical usage, conceptual understanding, or a balance of both

Rules:

- ask at most 3 questions
- keep the intake lightweight
- if the learner does not answer, default to:
  - `fast exploration`
  - balanced explanation and usage
  - one project idea

---

## Learning modes

### 1. Fast exploration

This is the default mode.

It should include roughly:

- what the library is for
- why it exists
- the mental model
- the few most important concepts
- setup with `uv`
- one minimal example
- a few short annotated code cells
- one simple project idea
- a short `what to ignore for now` section
- a short `what to learn next` section

### 2. In-depth exploration

This mode should go meaningfully deeper.

It should include roughly:

- richer conceptual explanation
- broader coverage of the important primitives
- more annotated examples
- more runnable cells
- common patterns and anti-patterns
- gotchas and caveats
- multiple project ideas
- optional support files when justified

This should still feel like a guided lab, not a docs dump.

---

## Notebook contract

Every notebook should be organized around a guided learning flow.

Typical sections:

1. title and purpose
2. what the library is for
3. why it exists
4. mental model
5. setup with `uv`
6. first minimal example
7. core concepts
8. annotated examples
9. common patterns
10. common mistakes or caveats
11. one main project or several project ideas
12. exercises or next experiments
13. suggested next questions for the agent

The notebook should intentionally mix:

- markdown cells for explanation
- code cells for runnable examples
- mini experiments
- small helper snippets only when necessary

The notebook should still be useful even if the learner mostly reads it before running every cell.

---

## Supporting artifact contract

The standard output shape is:

```text
examples/<library>/
├── notes.md
├── learning_lab.ipynb
└── mini_project/          # optional
```

Possible support artifacts:

- `mini_project/` for a small concrete project
- `data/` for tiny local datasets when they improve the notebook
- `assets/` only when they materially help explanation

Do not force all of these.
Keep the template lean.

---

## Required behavior

The system should optimize for:

- Python libraries only
- notebook-first teaching
- fast first exposure
- progressive understanding
- practical code
- small project scope
- minimal setup friction

Use `uv` as the default tool for Python environments and package management.

---

## Constraints

A good generated lab should generally have:

- one clear learning path
- around 3-5 core concepts in fast mode
- short, purposeful code cells
- as few support files as possible
- no heavy orchestration or framework layer

---

## Canonical example

For V1, use Airflow as the canonical example library.

The Airflow example should focus on:

- DAGs
- tasks
- dependencies
- simple workflow thinking
- reading a small DAG in context

It should avoid:

- advanced deployment
- distributed execution details
- enterprise architecture
- full production setup

Because Airflow is not naturally notebook-native, the example may use a small `mini_project/` to support the notebook while keeping the notebook itself readable without a full runtime.
