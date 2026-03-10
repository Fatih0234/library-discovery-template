from __future__ import annotations

import csv
import json
from collections import Counter
from datetime import datetime
from pathlib import Path

from airflow.sdk import dag, task

BASE_DIR = Path(__file__).resolve().parents[1]
DATA_PATH = BASE_DIR / "data" / "raw_orders.csv"
OUTPUT_PATH = BASE_DIR / "output" / "summary.json"


@dag(
    dag_id="csv_pipeline",
    schedule=None,
    start_date=datetime(2024, 1, 1),
    catchup=False,
    tags=["learning-lab"],
)
def csv_pipeline():
    @task
    def load_orders() -> list[dict[str, str]]:
        with DATA_PATH.open(newline="") as handle:
            return list(csv.DictReader(handle))

    @task
    def summarize_orders(rows: list[dict[str, str]]) -> dict[str, object]:
        valid_rows = [row for row in rows if row["status"] != "cancelled"]
        customer_counts = Counter(row["customer"] for row in valid_rows)

        return {
            "raw_rows": len(rows),
            "kept_rows": len(valid_rows),
            "total_revenue": round(sum(float(row["amount"]) for row in valid_rows), 2),
            "top_customer": customer_counts.most_common(1)[0][0] if customer_counts else None,
        }

    @task
    def write_summary(summary: dict[str, object]) -> str:
        OUTPUT_PATH.parent.mkdir(parents=True, exist_ok=True)
        OUTPUT_PATH.write_text(json.dumps(summary, indent=2))
        return str(OUTPUT_PATH)

    write_summary(summarize_orders(load_orders()))


csv_pipeline()
