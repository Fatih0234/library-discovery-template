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
3. Research the library in this order:
   - official documentation
   - official repository docs and examples
   - other high-quality first-party material only when it clearly supports the official docs
4. Avoid unsupported or undocumented claims when practical.
5. Create `examples/<library>/notes.md` as a curated beginner-focused research file using this structure:
   - `# <Library> Notes`
   - `**Mode:** <fast exploration|in-depth exploration>`
   - `## What This Library Is For`
   - `## Why It Exists`
   - `## Mental Model`
   - `## Core Concepts To Understand First`
   - `## Minimal Setup / Install Notes`
   - `## What To Ignore For Now`
   - `## Notebook Plan / Learning Flow`
   - `## Support-File Strategy`
   - `## What The Learner Should Understand By The End`
   - `## Project Ideas`
   - `## Sources`
6. Generate `examples/<library>/learning_lab.ipynb` as the primary deliverable. The notebook should align with the template and teach through a progressive notebook flow.
7. If the notebook reads local support files, use one small readable path helper that raises a learner-friendly `FileNotFoundError` with the missing file, the candidate paths checked, and a short recovery hint.
8. Add `examples/<library>/mini_project/` only if it makes the notebook easier to understand or extend.

The notebook should:
- explain what the library is for
- explain why it exists
- teach the beginner mental model
- include at least one minimal runnable example
- use a notebook-first learning flow with short runnable code cells and mini experiments
- include one strong project idea
- include a short `what to ignore for now` section when helpful
- include a short `Sources and next reading` section
- stay practical and avoid bloat
- include next experiments and suggested questions for the agent

Constraints:
- Python libraries only
- notebook-first, not markdown-first
- use `uv` by default for environment and package handling
- prefer official docs over scattered sources
- do not build a framework or heavy orchestration layer
- do not turn the notebook into an API catalog

Before finishing, verify:
- the notebook teaches progressively
- the mental model is clear
- at least one example is runnable
- the notebook is not a docs dump
- `notes.md` follows the expected structure
- sources are recorded clearly
- the output fits the selected mode
- support files are minimal and justified
```
