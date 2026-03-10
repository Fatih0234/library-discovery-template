---
name: github-repository-discovery
description: "Use when a task is to discover GitHub repositories for a target Python library: identify the official repository, shortlist learner-friendly example or demo repos, decide what is worth inspecting first, and only exceptionally recommend a local clone. Do not use for generic web research, package installation help, or arbitrary repository analysis unrelated to Python library discovery."
---

# GitHub Repository Discovery

Use this skill for structured GitHub repository discovery inside this notebook-first template.

Treat the task as a bounded ranking and inspection problem:

- identify the canonical repository
- shortlist a few useful example or demo repositories when they add learning value
- decide what to inspect first
- produce a short curated artifact instead of a noisy search dump

Its default report target is `examples/<library>/repo_discovery.md`, but only when repository discovery materially helps the library exploration.

## Use this skill when

- the task is to find the official repository for a Python library
- the task is to discover learner-friendly GitHub example, demo, tutorial, or notebook repositories
- the task is to decide what repository files or folders are worth reading first

Do not use this skill for:

- generic web research
- non-GitHub documentation review
- package installation help
- arbitrary repository analysis unrelated to Python library discovery

## Bundled resources

- `scripts/search_repositories.sh`
  Small wrapper around `GET /search/repositories`.
- `references/github-search-notes.md`
  Exact GitHub Search API behavior, limits, sorting rules, and failure cases.
- `assets/repo_discovery_template.md`
  Skeleton for `examples/<library>/repo_discovery.md`.

Read the reference note when you need exact API behavior.
Keep this file focused on workflow and guardrails.

## Working rules

- Keep the query set small and deliberate.
- Prefer better queries over more queries.
- Separate canonical-repository discovery from learner/example discovery.
- Do not default to `language:Python` when identifying the canonical repository.
- Inspect metadata, README, and repository tree before making recommendations.
- Default decision is inspect-only.
- Clone only when local checkout is clearly justified, and do not treat local clones as part of the default template output.

## Workflow

### 1. Normalize the library name

Start with the package name, then note likely repository aliases.

Examples:

- `pydantic`
- `duckdb`
- `apache-airflow`

### 2. Check the environment

Prefer GitHub CLI-based REST calls.

```sh
command -v gh
gh auth status
```

If authenticated access is unavailable, use public search conservatively and lean on narrower queries.
For exact rate limits, query limits, `incomplete_results`, and `422` handling, read `references/github-search-notes.md`.

### 3. Phase 1: identify the canonical repository

Start with broad passes that match how the project is named on GitHub.

Do not add `language:Python` by default here. A Python library may live in a mixed-language or non-Python-dominant repository.

Good canonical passes:

- `<library>`
- `<library> in:name`
- `<library> archived:false`
- `<alias>`

Use default best-match ranking first.

Examples:

```sh
SKILL_DIR=".agents/skills/github-repository-discovery"

"$SKILL_DIR/scripts/search_repositories.sh" "duckdb" "" "" 20 1
"$SKILL_DIR/scripts/search_repositories.sh" "apache-airflow in:name archived:false" "" "" 20 1
"$SKILL_DIR/scripts/search_repositories.sh" "pydantic" "" "" 20 1
```

### 4. Phase 2: discover learner-friendly example repositories

Only after the canonical repository is clear, run targeted example passes.

This is where qualifiers such as these are appropriate:

- `language:Python`
- `example`
- `demo`
- `tutorial`
- `notebook`
- `archived:false`

Examples:

```sh
"$SKILL_DIR/scripts/search_repositories.sh" "duckdb example language:Python" stars desc 20 1
"$SKILL_DIR/scripts/search_repositories.sh" "pydantic tutorial language:Python" stars desc 20 1
"$SKILL_DIR/scripts/search_repositories.sh" "apache-airflow notebook language:Python" updated desc 20 1
```

### 5. Evaluate candidates with the same rubric

For each serious candidate, check:

- officialness evidence
- relevance to the target library
- learner value
- maintenance or recency signal
- size and inspectability
- what to read first

Shortlist only the strongest candidates.

### 6. Inspect before clone

Do not clone immediately.

Inspect first:

- repository metadata and README
- top-level tree
- obvious docs, examples, notebooks, or tests

Useful commands:

```sh
gh repo view OWNER/REPO
gh api repos/OWNER/REPO/contents -H "Accept: application/vnd.github+json" -H "X-GitHub-Api-Version: 2022-11-28"
gh api repos/OWNER/REPO/contents/PATH -H "Accept: application/vnd.github+json" -H "X-GitHub-Api-Version: 2022-11-28"
```

### 7. Clone only when justified

Clone only when local checkout will materially improve the learning lab and that value is not achievable through inspection alone.

Rules:

- do not clone by default
- avoid cloning large or noisy repositories for first-pass learning
- do not treat clones as part of the default template output
- do not commit cloned repositories as template artifacts

### 8. Produce `repo_discovery.md`

Create `examples/<library>/repo_discovery.md` when repository discovery is part of the workflow.

Start from `assets/repo_discovery_template.md`.
Keep the file short, curated, and useful for later `notes.md`.
It should capture the shortlist, the evidence, what to inspect first, and why the final decision was inspect-only or clone.

## Boundaries

This skill will not:

- map the full ecosystem
- bulk-clone repositories
- hide the search method
- claim a repository is high quality without evidence from metadata, README, or tree inspection

## References

- `references/github-search-notes.md`
- [GitHub REST API: About search](https://docs.github.com/en/rest/search/search?apiVersion=2022-11-28#about-search)
- [GitHub REST API: Search repositories](https://docs.github.com/en/rest/search/search?apiVersion=2022-11-28#search-repositories)
