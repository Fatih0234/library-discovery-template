# Starter Prompt

Use this prompt when starting a new Python library exploration from this template.

```text
Read AGENTS.md, PHILOSOPHY.md, SPEC.md, TEMPLATE.md, and TASKS.md.

You are creating a notebook-first learning lab for the Python library <library>.

Follow this workflow:
1. Ask at most 3 lightweight framing questions only if they will materially improve the notebook.
   Preferred questions:
   - why the learner wants this library
   - whether they want fast exploration or in-depth exploration
   - whether they want practical, conceptual, or balanced coverage
2. If the learner does not answer, default to:
   - fast exploration
   - balanced explanation and usage
   - one main project idea
3. Research the library from official docs and first-party examples.
4. Create `examples/<library>/notes.md` as a curated beginner-focused research file.
5. Generate `examples/<library>/learning_lab.ipynb` as the primary deliverable.
6. Add `examples/<library>/mini_project/` only if it makes the notebook easier to understand or extend.

The notebook should:
- explain what the library is for
- explain why it exists
- teach the beginner mental model
- include short runnable code cells and mini experiments
- stay practical and avoid bloat
- include one strong project idea
- include next experiments and suggested questions for the agent

Constraints:
- Python libraries only
- notebook-first, not markdown-first
- use `uv` by default for environment and package handling
- prefer official docs over scattered sources
- do not build a framework or heavy orchestration layer
- do not turn the notebook into an API catalog
```
