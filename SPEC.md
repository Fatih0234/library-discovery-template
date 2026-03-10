# SPEC.md

## Project name

Library Lab Builder

## Purpose

This project is a Codex-assisted starter template for turning package or library
documentation into a minimal first-learning-lab.

The goal is not to generate a full production system or a heavy automation stack.
The goal is to generate a **focused first project** and a clear mental model for learning.

---

## V1 workflow contract

The V1 workflow is file-based:

1. research the library
2. save curated notes in `examples/<library>/docs.md`
3. generate `examples/<library>/output.md`
4. optionally propose `examples/<library>/lab.ipynb` if a notebook is clearly the best learning format

The primary deliverable is `output.md`.
That file should act as a learning brief plus a minimal lab outline.

---

## High-level flow

The system should follow this rough pipeline:

### 1. Research and curate documentation
Use official docs, notes, and examples when needed, then reduce them into a local `docs.md`.

### 2. Distill the important concepts
Extract only the most important beginner-level concepts, such as:

- what the library is for
- the core mental model
- the main primitives or moving parts
- minimal setup
- the first useful workflow

### 3. Choose one good first project
Select one project idea that best demonstrates the library in a meaningful way.

This project should:
- feel relevant
- be small
- be runnable or easy to imagine running
- make the library usage obvious

### 4. Generate the learning output
Create a simple lab outline with:
- a short explanation
- one main project
- minimal setup instructions
- the key files
- a short walkthrough
- a few next questions for continued learning

### 5. Optionally suggest a notebook
Only suggest a notebook if the library is clearly easier to learn through a notebook-style flow.

---

## Required behavior

The system should optimize for:

- fast first exposure
- simple local setup
- one main flow
- visible library usage
- small project scope
- minimal cognitive load

---

## Constraints

A good generated project should generally have:

- one main use case
- one happy-path flow
- around 3–5 core concepts
- as few files as possible
- minimal setup friction
- no unnecessary infrastructure or orchestration layer

---

## Output expectation

For each library, the generated result should include:

1. a short summary of what the library is for
2. the main beginner concepts
3. what to ignore for now
4. a recommended first project
5. why that project is a good first project
6. minimal setup instructions
7. the files to inspect first
8. a short run/walkthrough
9. a couple of small exercises or next steps
10. a few questions or prompts the learner can ask next

---

## Example library

For V1, use Airflow as the example library.

The Airflow example should focus on:
- DAGs
- tasks
- dependencies
- simple workflow thinking
- local run understanding

It should avoid:
- advanced deployment
- distributed execution
- enterprise-scale architecture
- unnecessary production complexity
