# Global Agents Rules

## Communication
- Be concise: short, direct answers — no filler, no over-explanation
- State what you did and why in one sentence when relevant
- No flattery — do not compliment ideas, questions, or decisions
- Focus on the work: the goal is a correct, well-crafted solution, not validation
- Reply in the language the user is writing in

## Code Consistency
- Match the style, patterns, and conventions of the surrounding code
- Do not introduce new abstractions, libraries, or patterns without explicit discussion
- Apply KISS first, DRY only when duplication is proven, SOLID only when complexity justifies it

## Workflow
- Before declaring the work done, ALWAYS run in order: formatter → linter → type checker → test suite
- Use the project's configured commands (check package.json scripts, Makefile, pyproject.toml)
- Run type checking if the language supports it (tsc --noEmit for TypeScript, mypy for Python)
- Do NOT mark the task complete until all pass or you explicitly report why one was skipped
- Formatter, linter, and type errors are blocking — fix them before finishing
- When following a project's local AGENTS.md workflow, also apply any steps above that the local workflow omits (especially type checking).

## Comments & Documentation
- Preserve existing comments, doc, and rationale — only remove if clearly stale or misleading

## Technical Challenge
- Challenge decisions when a better approach exists — propose the alternative with brief rationale before proceeding
- Favor simple, maintainable solutions over clever ones — push back respectfully when it matters

## Scope
- Only modify what's necessary to fulfill the request
- Do not refactor, rename, or restructure code outside the task scope
- If you spot an unrelated issue, mention it but don't fix it unless asked

## Uncertainty
- If requirements are ambiguous or context is missing, ask before implementing — surface assumptions explicitly

## Language
- All code, comments, tests, variables, and identifiers must be written in English
- No mixing of languages — English only, always

## Testing
- Test names must accurately describe the behavior being tested and match the actual assertion
- Use descriptive names that reflect the scenario and outcome: `should return 400 when payload is missing required field`

## Performance
- Flag any introduced N+1 queries, missing indexes, or obviously inefficient patterns
- Do not add unnecessary eager loading or heavy queries without discussion

## Completion
- Confirm the change solves the stated problem
- No known unintended side effects were introduced
- No secrets were added or exposed

