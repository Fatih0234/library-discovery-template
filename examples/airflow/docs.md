# Airflow Notes for First Learning Lab

This file is not meant to be full official documentation.
It is a small curated input to help generate a first learning project.

---

## What Airflow is for

Airflow is used to define, schedule, and orchestrate workflows.

A workflow is usually represented as a DAG:
Directed Acyclic Graph.

In practice, Airflow lets you define a flow of tasks,
their dependencies, and when they should run.

It is commonly used in data engineering and automation scenarios
where you want repeatable, observable workflows.

---

## The main concepts a beginner should see first

### 1. DAG
A DAG is the workflow definition.
It describes the tasks and the order/dependencies between them.

### 2. Task
A task is a single unit of work in the DAG.

Examples:
- fetch data
- clean data
- write output

### 3. Dependencies
Tasks can depend on one another.

For example:
- fetch data first
- then transform it
- then save results

### 4. Scheduling
Airflow can run workflows on a schedule.
A beginner does not need advanced scheduling knowledge first,
but should understand that Airflow is built for repeatable scheduled runs.

### 5. Local workflow understanding
A beginner should understand how a DAG file looks,
how tasks are connected,
and how a simple workflow is run locally.

---

## What should be ignored for now

These topics are important later, but not for first exposure:

- advanced executors
- distributed infrastructure
- kubernetes deployment
- production hardening
- plugin systems
- complex operators
- enterprise architecture

---

## What a good first project might look like

A good first project should be small and clearly show:

- one DAG
- a few tasks
- task dependencies
- a simple data flow
- easy local execution

Example idea:

A tiny workflow that:
1. reads a raw CSV file
2. cleans or summarizes the data
3. writes a result file

This is good because it shows orchestration clearly
without distracting the learner with too much infrastructure.

---

## What the learner should understand after the first project

After the first project, the learner should be able to say:

- I understand what a DAG is
- I understand what tasks are
- I understand how task dependencies create a workflow
- I understand why Airflow is useful
- I can inspect a simple DAG and follow the flow