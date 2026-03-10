# Airflow Notes

**Mode:** fast exploration

## What This Library Is For

Airflow is used to define, schedule, and observe workflows.

A workflow in Airflow is usually modeled as a DAG: a Directed Acyclic Graph.

In practice, this means you describe:

- the tasks that need to happen
- the order they should happen in
- when the workflow should run

Airflow is common in data engineering and automation work where repeatable multi-step processes matter.

## Why It Exists

People reach for Airflow when a plain Python script or cron job stops being enough.

The value is not only "run some code later."
The value is:

- explicit dependencies
- visible workflow structure
- retries and scheduling
- logs and task-level observability

A beginner does not need the production story first.
They need to see how Airflow turns a multi-step process into a readable workflow.

## Mental Model

The first useful mental model is:

- a DAG is the workflow recipe
- a task is one step in that recipe
- dependencies connect the steps
- a run is one execution of that recipe

For first exposure, keep the workflow tiny and local.

## Core Concepts To Understand First

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

## Minimal Setup / Install Notes

Use `uv` by default for environment creation and installation.

Airflow installation is version-sensitive, so the notebook should show the `uv pip install ... --constraint ...` pattern and tell the learner to use the current stable version and matching constraints file from the official Airflow install docs.

Keep setup secondary to the learning flow.

## What To Ignore For Now

These topics matter later, but they are not needed for first exposure:

- executors
- production deployment
- Kubernetes
- plugins
- cross-team platform architecture
- advanced scheduling edge cases

## Notebook Plan / Learning Flow

Use one small CSV-processing workflow:

1. show the DAG mental model with a tiny dependency sketch
2. inspect the real DAG file that powers the example
3. inspect the input CSV
4. reproduce the data transformation in plain Python
5. connect that walkthrough back to one practical project idea

This works well because it makes the DAG, tasks, and dependencies obvious without needing a large codebase.

## Support-File Strategy

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

No extra `assets/` folder is needed for this example.

## What The Learner Should Understand By The End

After the first pass, the learner should be able to say:

- I understand what a DAG is
- I understand what a task is
- I understand how dependencies create a workflow
- I understand why Airflow is useful
- I know what file to inspect first
- I have one small project direction to try next

## Project Ideas

Main project idea:

Build one small CSV-processing workflow with three tasks:

1. load raw order data
2. compute a tiny summary
3. write a small output file

Possible extension:

Add one validation task before the summary step and inspect how the DAG structure changes.

## Sources

Official docs:

- Airflow docs home: <https://airflow.apache.org/docs/>
- Core concepts: <https://airflow.apache.org/docs/apache-airflow/stable/core-concepts/index.html>
- Airflow 101 tutorial: <https://airflow.apache.org/docs/apache-airflow/stable/tutorial/fundamentals.html>
- TaskFlow tutorial: <https://airflow.apache.org/docs/apache-airflow/stable/tutorial/taskflow.html>

Official repository docs and examples:

- Apache Airflow repository: <https://github.com/apache/airflow>

These are the main sources for this lab.
Start with the TaskFlow tutorial and core concepts pages if you want the next layer of detail.
