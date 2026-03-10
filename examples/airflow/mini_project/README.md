# Airflow Mini Project

This folder supports `learning_lab.ipynb`.

Use the notebook first. Then inspect these files:

1. `dags/csv_pipeline.py` — the small Airflow DAG
2. `data/raw_orders.csv` — the tiny input dataset

## What this project shows

- one DAG
- three tasks
- simple dependencies
- one visible output file

## If you want to run it for real

1. Create a virtual environment with `uv`.
2. Install the current stable Airflow version with the matching constraints file from the official install docs.
3. Point Airflow at this folder's `dags/` directory.
4. Trigger the DAG and inspect the generated output file.

Example command pattern:

```bash
uv venv
source .venv/bin/activate
uv pip install "apache-airflow==<airflow-version>" \
  --constraint "https://raw.githubusercontent.com/apache/airflow/constraints-<airflow-version>/constraints-<python-version>.txt"

export AIRFLOW_HOME="$(pwd)/.airflow"
export AIRFLOW__CORE__DAGS_FOLDER="$(pwd)/dags"
airflow standalone
```

The DAG writes its result to `output/summary.json`.
