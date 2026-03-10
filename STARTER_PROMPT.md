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

## How To Steer The Prompt

Use the starter prompt as a small set of dials:

- `library`: the Python library to explore
- `mode`: `fast exploration` or `in-depth exploration`
- `emphasis`: `practical usage`, `conceptual understanding`, or `balanced`
- `learner context`: what the learner already knows or wants to build
- `constraints`: whether to avoid extra questions, skip repo discovery unless needed, or keep support files minimal

If you only provide the library, the default is:

- `fast exploration`
- balanced explanation and usage
- one project idea
- lightweight framing questions only if they materially help

## Starter Variants

Choose one of these, then delete the rest.

### 1. Minimal Default

```text
Read AGENTS.md, PHILOSOPHY.md, SPEC.md, TEMPLATE.md, and TASKS.md.

Create a notebook-first learning lab for the Python library <library>.
```

### 2. Explicit Fast Exploration

```text
Read AGENTS.md, PHILOSOPHY.md, SPEC.md, TEMPLATE.md, and TASKS.md.

Create a `fast exploration` notebook-first learning lab for the Python library <library>.
Keep the result balanced between conceptual explanation and practical usage.
Use official docs first and keep support files minimal.
```

### 3. Concept-First

```text
Read AGENTS.md, PHILOSOPHY.md, SPEC.md, TEMPLATE.md, and TASKS.md.

Create a `fast exploration` notebook-first learning lab for the Python library <library>.
Focus on mental model, core concepts, why the library exists, and what to ignore for now.
Keep code examples short and only as deep as needed to support the concepts.
```

### 4. Practice-First

```text
Read AGENTS.md, PHILOSOPHY.md, SPEC.md, TEMPLATE.md, and TASKS.md.

Create a `fast exploration` notebook-first learning lab for the Python library <library>.
Focus on short runnable examples, practical usage patterns, and one strong first project idea.
Keep setup friction low and use `uv`.
```

### 5. In-Depth Exploration

```text
Read AGENTS.md, PHILOSOPHY.md, SPEC.md, TEMPLATE.md, and TASKS.md.

Create an `in-depth exploration` notebook-first learning lab for the Python library <library>.
Go deeper on the important primitives, patterns, caveats, and tradeoffs without turning the notebook into a docs dump.
Use official docs first and keep the learning flow progressive.
```

### 6. In-Depth With Learner Background

```text
Read AGENTS.md, PHILOSOPHY.md, SPEC.md, TEMPLATE.md, and TASKS.md.

Create an `in-depth exploration` notebook-first learning lab for the Python library <library>.
Assume the learner already knows <related tools, libraries, or domain background>.
Use that background to explain the mental model, similarities, and differences.
```

### 7. Discovery-Aware

```text
Read AGENTS.md, PHILOSOPHY.md, SPEC.md, TEMPLATE.md, and TASKS.md.

Create a `fast exploration` notebook-first learning lab for the Python library <library>.
If GitHub repository discovery materially helps identify the canonical repository or the best first-party examples, use the `github-repository-discovery` skill and create `examples/<library>/repo_discovery.md` before writing `notes.md`.
```

### 8. Minimal Support Files

```text
Read AGENTS.md, PHILOSOPHY.md, SPEC.md, TEMPLATE.md, and TASKS.md.

Create a `fast exploration` notebook-first learning lab for the Python library <library>.
Keep the notebook as the main artifact.
Do not add support files unless they clearly improve the notebook.
Only add `mini_project/` if it materially helps the learner understand the library.
```

### 9. Fewer Follow-Up Questions

```text
Read AGENTS.md, PHILOSOPHY.md, SPEC.md, TEMPLATE.md, and TASKS.md.

Create a `fast exploration` notebook-first learning lab for the Python library <library>.
Assume I want a balanced mix of concepts and practical usage.
Do not ask framing questions unless they materially improve the notebook.
```

### 10. Comparison-Led

```text
Read AGENTS.md, PHILOSOPHY.md, SPEC.md, TEMPLATE.md, and TASKS.md.

Create a `fast exploration` notebook-first learning lab for the Python library <library>.
Assume the learner is coming from <comparison library or tool>.
Explain what feels similar, what changes mentally, and when this library is worth reaching for.
```
