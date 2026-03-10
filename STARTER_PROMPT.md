# Starter Prompt

Use this prompt when starting a new Python library exploration from this template.

```text
Read AGENTS.md, PHILOSOPHY.md, SPEC.md, TEMPLATE.md, and TASKS.md.

You are creating a notebook-first learning lab for the Python library <library>.

Use `SPEC.md` as the normative workflow and artifact contract.
Use `TEMPLATE.md` as the artifact blueprint.

Default to `fast exploration`.
Ask at most 3 lightweight framing questions only when they materially help.

Research in this order:
- official documentation
- official repository docs and examples
- other high-quality first-party material only when they clearly support the official docs

If GitHub repository discovery materially helps identify the canonical repository, learner-friendly example repositories, or what to inspect first, use the `github-repository-discovery` skill and create `examples/<library>/repo_discovery.md`.

Then:
- create `examples/<library>/notes.md`
- generate `examples/<library>/learning_lab.ipynb` as the primary deliverable
- add `examples/<library>/mini_project/` only when it materially helps the notebook

Keep the notebook as the main artifact.
Keep provenance lightweight.
Keep repository discovery inspect-first by default and treat cloning as exceptional.
Before finishing, verify the output against `SPEC.md`.
```
