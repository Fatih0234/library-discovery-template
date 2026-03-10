# Airflow Repository Discovery

This file is a short support artifact for later `notes.md`.
It stays focused on repository selection and what to inspect first.

## Search Goal

Identify the canonical GitHub repository for Apache Airflow and the few repository paths worth inspecting before writing the learning lab.

## Library / Aliases

- `apache-airflow`
- `airflow`
- `Apache Airflow`

## Auth Status

GitHub CLI authenticated access was available.
Public repository discovery would also have been sufficient for this library.

## Search Passes Used

- Canonical repository identification:
  - `apache-airflow`
  - `apache-airflow in:name archived:false`
  - `airflow in:name archived:false`
- Learner/example repository discovery:
  - not needed for this example because the canonical repository already contains high-signal docs and example DAG paths

## Shortlisted Repositories

### apache/airflow

- Category: official / canonical repository
- Officialness evidence: repository lives under the Apache organization and the README description matches the library directly
- Relevance to the library: canonical source for repository docs, example DAGs, and project structure
- Learner value: high for locating example DAGs and official repo-backed doc paths, but too large for broad browsing
- Maintenance / recency signal: active, multi-maintainer project with visible release and CI activity
- Size / inspectability signal: large repository; targeted inspection is better than cloning for a first-pass lab
- Read first:
  - `airflow-core/docs/tutorial/`
  - `airflow-core/docs/core-concepts/`
  - `airflow-core/src/airflow/example_dags/`
- Decision: inspect-only
- Clone rationale: not needed for this template because official docs plus targeted tree inspection already provide enough source material

## Reference-Only Repositories

None for this example.

## Cautions / Limitations

- Airflow is a large repository, so broad tree browsing adds noise quickly.
- Prefer the official docs site for explanations and use the repository mainly to inspect example DAGs and source layout.
