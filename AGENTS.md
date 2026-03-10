# AGENTS.md

This repository is a small, opinionated starter system for generating
minimal learning labs from package or library documentation.

## How to work in this repo

Read these files first, in this order:

1. `PHILOSOPHY.md`
2. `SPEC.md`
3. `TEMPLATE.md`
4. `TASKS.md`

Then inspect the example folder:

- `examples/airflow/docs.md`
- `examples/airflow/output.md`

## Default V1 workflow

This repo is meant to be used with Codex as a small file-based template.

The default flow is:

1. research a library and collect the important beginner-level material
2. reduce that research into a local `docs.md`
3. generate a structured `output.md` from that local file
4. optionally suggest a notebook only if the library is clearly easier to learn in that format

When browsing is needed, prefer official documentation and first-party examples.
Do not synthesize directly from scattered sources.
Always reduce the research into a local curated `docs.md` before generating the final learning lab.

If the library is Python-related, use `uv` as the default tool for virtual environments and package management.

## Working rules

- Keep the implementation minimal.
- Do not over-engineer the system.
- Do not add extra folders, tools, or frameworks unless they are clearly needed.
- This is a V1 starter project, not a full platform.
- Prefer a simple file-based workflow over complex orchestration.
- The goal is clarity and usefulness, not completeness.

## What this system is trying to do

Given a library's documentation, the system should help produce:

1. a distilled explanation of the library
2. one strong first project idea
3. a minimal lab outline showing the key files and flow
4. a short walkthrough showing the core usage
5. a few follow-up questions or prompts the learner can explore next with the agent

## Important mindset

The generated result should help a learner understand:

- why the library exists
- what problem it solves
- which concepts matter first
- how the library is used in a simple but meaningful project

## Anti-goals

Avoid these failure modes:

- summarizing the entire documentation
- dumping too many concepts at once
- creating fake-complex "portfolio theater"
- producing a project where the library usage is unclear
- introducing unnecessary setup friction

## Output style

The output should feel like:

- focused
- small
- relevant
- runnable in spirit, even when V1 stops at a clear lab outline
- beginner-friendly
- concept-first
