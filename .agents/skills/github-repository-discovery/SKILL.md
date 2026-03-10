---
name: github-repository-discovery
description: "Use when a task is to discover GitHub repositories for a target Python library: identify the official repository, shortlist learner-friendly example or demo repos, decide what is worth reading or cloning into `examples/<library>/`, and point to the first files or folders to inspect. Do not use for generic web research, package installation help, or arbitrary repository analysis unrelated to Python library discovery."
---

# GitHub Repository Discovery

## Purpose

Use this skill for structured GitHub repository discovery inside this notebook-first Python library exploration template.

Treat the task as a bounded ranking and curation problem:

- find the best few repositories for a learner
- separate official sources from example or demo repositories
- inspect before cloning
- produce a short curated artifact, not a noisy result dump

This skill is repo-specific. Its default report target is `examples/<library>/repo_discovery.md`.

## Triggering

Use this skill when the task is to:

- find the official repository for a Python library
- discover GitHub example, demo, tutorial, or notebook repositories for that library
- decide which repositories are worth cloning into `examples/<library>/`
- identify which files or folders are worth reading first in shortlisted repositories

Do not use this skill for:

- generic web research
- non-GitHub documentation review
- package installation help
- arbitrary repository analysis unrelated to Python library discovery

## Preconditions

Before searching:

1. Confirm the target library name and any common aliases.
   Examples: package name vs repository name, like `apache-airflow` vs `airflow`.
2. Check whether `gh` is installed.
3. Check whether `gh auth status` succeeds.
4. Decide whether public repositories are enough or whether authenticated access may matter.
5. If the library name or search scope is unclear, ask one lightweight clarifying question before searching.

Useful checks:

```sh
command -v gh
gh auth status
```

If `gh` is missing or unauthenticated, public repository search can still work through the bundled script, but be conservative with request count because unauthenticated search is limited to 10 requests per minute.

## Bundled resources

- `scripts/search_repositories.sh`
  Small wrapper around `GET /search/repositories` using `gh api search/repositories` when authenticated.
- `references/github-search-notes.md`
  Short summary of the GitHub REST search docs and constraints.
- `assets/repo_discovery_template.md`
  Skeleton for `examples/<library>/repo_discovery.md`.

Read the reference note only when you need the exact API behavior or limits.

## Search protocol

### 1. Normalize the library name

Start with the Python package name, then note likely repository aliases.

Examples:

- `tenacity`
- `pydantic`
- `duckdb`
- `apache-airflow`

Prefer search terms that match how the project is named on GitHub.

### 2. Check the environment

Prefer GitHub CLI-based REST calls.

Run:

```sh
command -v gh
gh auth status
```

If authenticated, use authenticated requests. If not, use public search only and keep the number of search passes low.

### 3. Plan a small query set

Do not rely on one giant query. Plan 4-6 focused passes, using only the queries that add signal for the target library.

Candidate passes:

- `<library> language:Python`
- `<library> in:name language:Python`
- `<library> in:description language:Python`
- `<library> example language:Python`
- `<library> demo language:Python`
- `<library> tutorial language:Python`
- `<library> notebook language:Python`
- `<library> archived:false language:Python`

Query rules:

- keep queries under GitHub's 256-character limit excluding operators and qualifiers
- keep boolean operators to at most five total `AND`, `OR`, or `NOT`
- prefer narrowing with qualifiers over long boolean-heavy queries

### 4. Execute repository search

Use the bundled wrapper:

```sh
SKILL_DIR=".agents/skills/github-repository-discovery"

"$SKILL_DIR/scripts/search_repositories.sh" "tenacity language:Python" "" "" 20 1
"$SKILL_DIR/scripts/search_repositories.sh" "pydantic example language:Python" stars desc 20 1
"$SKILL_DIR/scripts/search_repositories.sh" "duckdb archived:false language:Python" updated desc 20 1
```

Behavior to follow:

- use default best match when trying to identify the official or canonical repository
- use `sort=stars&order=desc` for a popularity scan
- use `sort=updated&order=desc` when freshness matters
- default to `per_page=20` to `30` for inspection-heavy passes
- use `per_page=100` only when there is a clear reason to broaden the scan

GitHub repository search returns up to 100 results per page and at most 1,000 results per search. Do not page deeply by default.

### 5. Handle API limits and failures explicitly

Work within the documented constraints:

- authenticated search: up to 30 requests per minute
- unauthenticated search: up to 10 requests per minute
- default ranking: best match unless `sort` is provided
- internal search scope: GitHub only searches up to 4,000 matching repositories for a query

When search goes wrong:

- if a query is too broad or noisy, narrow it with `in:name`, `in:description`, `archived:false`, or a better keyword
- if `incomplete_results=true`, narrow or split the query; do not blindly retry the same broad pass
- if a `422` response appears, check query length, boolean operator count, access qualifiers like `repo:` or `org:`, or possible spam throttling before retrying
- if you are nearing the rate limit, stop adding redundant passes

Prefer better queries over more queries.

### 6. Shortlist candidates by category

Shortlist only the strongest candidates. Use categories such as:

- official / canonical repository
- learner-friendly examples
- focused practical demos
- notable but large / reference-only repositories

### 7. Evaluate with a transparent rubric

For each serious candidate, check:

- likely officialness
- relevance to the target library
- evidence that the library is used meaningfully, not just mentioned
- usefulness for a learner
- repository size and inspectability
- presence of examples, docs, notebooks, or tests
- maintenance signal and recency
- title and description quality

### 8. Inspect before cloning

Do not clone immediately.

First inspect:

- repository metadata
- README
- top-level file tree
- obvious folders such as `examples/`, `docs/`, `notebooks/`, and `tests/`

Useful commands:

```sh
gh repo view OWNER/REPO
gh api repos/OWNER/REPO/readme -H "Accept: application/vnd.github+json" -H "X-GitHub-Api-Version: 2022-11-28"
gh api repos/OWNER/REPO/contents -H "Accept: application/vnd.github+json" -H "X-GitHub-Api-Version: 2022-11-28"
```

Only recommend cloning once the repository is clearly useful for learning.

### 9. Clone selectively

Default maximum:

- 1 official repository if it is worth local inspection
- 2-4 additional learner-friendly repositories

Avoid cloning large or noisy repositories by default. Large canonical repositories can stay reference-only.

Example:

```sh
gh repo clone OWNER/REPO examples/<library>/repos/<repo-name>
```

### 10. Produce a structured artifact

Create `examples/<library>/repo_discovery.md` when repository discovery is part of a library exploration workflow.

Start from `assets/repo_discovery_template.md` and fill in:

- search goal
- auth status
- queries used
- shortlisted repositories by category
- why each repository was selected
- what files or folders to read first
- clone decisions
- reference-only repositories
- cautions and limitations encountered

Keep the artifact curated and short. It should support later `notes.md` and notebook work, not replace them.

## Boundaries

This skill will not:

- map the full ecosystem
- build a multi-agent workflow
- use MCP
- bulk-clone repositories
- hide the search method
- claim a repository is high-quality without evidence from metadata, README, or tree inspection

## References

For exact API details, read:

- `references/github-search-notes.md`
- GitHub REST API docs: About search
- GitHub REST API docs: Search repositories
