# Airflow — First Learning Lab

## 1. What this library is for

Airflow is for defining and running repeatable workflows.
It helps you describe a series of steps, their dependencies, and when they should run.

For a beginner, the important idea is simple:
Airflow lets you turn a process into a visible workflow instead of a pile of disconnected scripts.

## 2. Core concepts to understand first

- DAG — the workflow definition
- Task — one unit of work inside the workflow
- Dependencies — the order between tasks
- Scheduling — Airflow is built for repeatable runs
- Local workflow understanding — read the DAG file, follow the task flow, inspect the result

## 3. What to ignore for now

- advanced executors
- distributed infrastructure
- kubernetes deployment
- production hardening
- plugin systems
- enterprise-scale architecture

## 4. Recommended first project

**Project title:** CSV summary pipeline

Build one small Airflow DAG that reads a raw CSV file, computes a tiny summary, and writes a result file.
Use three tasks: read, summarize, and save.
The point is not the data work itself.
The point is seeing how Airflow models a workflow with tasks and dependencies.

## 5. Why this project is a good introduction

This project is relevant because small data workflows are a common reason people look at Airflow in the first place.
It is simple because the data logic can stay tiny while the workflow structure stays visible.
It makes Airflow usage obvious because the learner can see one DAG, a few tasks, and clear dependencies in one place.
It covers the core concepts without pulling in production complexity too early.

## 6. Minimal setup

- create a local Python environment with `uv`
- install Airflow with `uv`
- initialize a local Airflow project
- add one DAG file
- place one small CSV input file where the DAG can read it
- run the DAG locally and inspect the output file

## 7. Files to inspect first

1. `dags/csv_summary_dag.py` — the main DAG definition with tasks and dependencies
2. `data/input.csv` — the tiny source file the workflow reads
3. `data/output_summary.json` — the generated result that shows the workflow completed
4. `README.md` — the short setup and run instructions for the lab

## 8. Run instructions

- create the environment and install dependencies with `uv`
- initialize Airflow locally
- start the Airflow services or local environment
- trigger the `csv_summary_dag`
- inspect the task graph and check the generated summary file

## 9. Walkthrough

Start by opening the DAG file.
Read it from top to bottom and identify the three tasks.
Notice that the main learning value is not hidden in helper code.
It is in how the DAG expresses the workflow.

The first task reads a CSV file.
The second task computes a simple summary, such as row count or totals.
The third task writes the result to an output file.
The dependency chain shows the workflow clearly: read first, summarize second, save last.

After running the DAG locally, inspect the Airflow UI or logs and then open the output file.
That closes the loop between workflow definition and visible result.

## 10. Tiny exercises / next steps

- add a fourth task that validates the input before summarizing
- change the summary to include one extra metric
- make the workflow run on a simple schedule instead of only manual execution

## 11. Questions to ask next

- How would this DAG change if one task failed and needed retry behavior?
- When should I use Airflow instead of a plain Python script or cron job?
- What parts of this example are Airflow-specific and what parts are just normal Python?
- How would I split this workflow into more tasks without making it harder to understand?
