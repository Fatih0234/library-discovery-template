# Airflow Notes for Notebook-First Learning Lab

This file is not meant to be full documentation.
It is a curated source file for generating a beginner-friendly notebook.

---

## What Airflow is for

Airflow is used to define, schedule, and observe workflows.

A workflow in Airflow is usually modeled as a DAG:
Directed Acyclic Graph.

In practice, this means you describe:

- the tasks that need to happen
- the order they should happen in
- when the workflow should run

Airflow is common in data engineering and automation work where repeatable multi-step processes matter.

---

## Why it exists

People reach for Airflow when a plain Python script or cron job stops being enough.

The value is not only "run some code later."
The value is:

- explicit dependencies
- visible workflow structure
- retries and scheduling
- logs and task-level observability

A beginner does not need the production story first.
They need to see how Airflow turns a multi-step process into a readable workflow.

---

## Beginner mental model

The first useful mental model is:

- a DAG is the workflow recipe
- a task is one step in that recipe
- dependencies connect the steps
- a run is one execution of that recipe

For first exposure, keep the workflow tiny and local.

---

## Core concepts to emphasize

### 1. DAG

The workflow definition.
It describes the steps and their dependency structure.

### 2. Task

A single unit of work.

Examples:

- load a file
- clean a dataset
- write a result

### 3. Dependencies

Dependencies say what must finish before the next task can begin.

### 4. Schedule

Airflow is built for repeatable runs.
A beginner only needs a minimal idea of scheduling at first.

### 5. Observability

Airflow keeps logs and task states visible.
This is part of why it exists.

---

## What to ignore for now

These topics matter later, but they are not needed for first exposure:

- executors
- production deployment
- Kubernetes
- plugins
- cross-team platform architecture
- advanced scheduling edge cases

---

## Good fast-mode notebook direction

Use one small CSV-processing workflow:

1. load raw order data
2. compute a tiny summary
3. write a small output file

This works well because it makes the DAG, tasks, and dependencies obvious without needing a large codebase.

---

## Support-file strategy

Airflow is not naturally notebook-native, so the notebook should stay readable even if the learner does not run Airflow immediately.

Use the notebook to:

- explain the workflow model
- preview the DAG file
- inspect the sample data
- reproduce the data transformation in plain Python

Use `mini_project/` to hold:

- the real DAG file
- the tiny CSV input
- a short run note

---

## Setup note

Use `uv` by default for environment creation and installation.

Airflow installation is version-sensitive, so the notebook should show the `uv pip install ... --constraint ...` pattern and tell the learner to use the current stable version and matching constraints file from the official Airflow install docs.

Keep setup secondary to the learning flow.

---

## What the learner should understand after the notebook

After the first pass, the learner should be able to say:

- I understand what a DAG is
- I understand what a task is
- I understand how dependencies create a workflow
- I understand why Airflow is useful
- I know what file to inspect first
- I have one small project direction to try next
