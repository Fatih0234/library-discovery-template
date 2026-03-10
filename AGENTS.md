# AGENTS.md

This repository is a small, opinionated starter system for generating notebook-first learning labs for Python libraries.

## How to work in this repo

Read these files first, in this order:

1. `PHILOSOPHY.md`
2. `SPEC.md`
3. `TEMPLATE.md`
4. `TASKS.md`

Then inspect the canonical example folder:

- `examples/airflow/notes.md`
- `examples/airflow/learning_lab.ipynb`
- `examples/airflow/mini_project/README.md`

## Default V1 workflow

This repo is meant to be used with Codex as a small file-based template.

The default flow is:

1. choose a Python library
2. ask at most 3 lightweight framing questions when useful
3. research the library from official docs and first-party examples
4. reduce that research into a structured local `notes.md` with a short `Sources` section
5. generate a notebook-first `learning_lab.ipynb` with a short `Sources and next reading` section
6. optionally add a small `mini_project/` only if it helps the notebook land better

When browsing is needed, prioritize:

1. official documentation
2. official repository docs and examples
3. other high-quality first-party sources only when they clearly support the official docs

When the task is specifically GitHub repository discovery for a target Python library, prefer the `github-repository-discovery` skill before deciding which repositories to inspect or clone.

Do not synthesize directly from scattered sources.
Avoid unsupported or undocumented claims when practical.
Always reduce the research into a local curated `notes.md` before generating the final notebook.
Make the main sources visible in both `notes.md` and the notebook without turning the output into citation machinery.

Use `uv` as the default tool for Python environments and package handling.

## Working rules

- Keep the implementation minimal.
- Do not over-engineer the system.
- Do not add extra folders, tools, or frameworks unless they are clearly needed.
- This is a V1 starter project, not a platform.
- Prefer a simple file-based workflow over orchestration.
- The notebook is the main teaching artifact.

## Default `notes.md` shape

Use this repeatable structure for `examples/<library>/notes.md`:

1. library name and mode
2. what the library is for
3. why it exists
4. mental model
5. core concepts to understand first
6. minimal setup / install notes
7. what to ignore for now
8. notebook plan / learning flow
9. support-file strategy
10. what the learner should understand by the end
11. project ideas
12. sources

Keep the same shape in both modes.
Fast exploration stays selective.
In-depth exploration adds depth inside the same sections instead of inventing a new outline.

## What this system is trying to produce

Given a Python library's documentation, the system should help produce:

1. a distilled explanation of the library
2. a practical mental model
3. runnable notebook cells and mini experiments
4. one strong first project idea
5. a few follow-up questions or prompts the learner can explore next

## Important mindset

The generated result should help a learner understand:

- what the library is for
- why it exists
- which concepts matter first
- how to use it in code
- where the main explanations came from
- what to try next

## Anti-goals

Avoid these failure modes:

- dumping the whole documentation into notebook cells
- turning the notebook into an API catalog
- creating a fake-complex mini app that hides the library usage
- asking too many framing questions
- adding setup friction that overwhelms the first learning pass

## Output style

The output should feel:

- focused
- small
- practical
- readable even before every cell is run
- beginner-friendly
- concept-first
