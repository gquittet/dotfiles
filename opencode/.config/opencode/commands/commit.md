---
description: Generate a conventional commit message [7c488572|main..HEAD]
---

Generate a git commit message for the changes below.

Rules:
* Use the Conventional Commit format.
* Use bullet points for multiple changes (use '*' NOT '-').
* Extract the issue number from the branch name below.
  If an issue number is found, append this footer:
  ```
  Issue: <project_name>#{issue_number}
  ```
  where <project_name> comes from the project root below.
  If no issue number, omit the footer.
* Every line must be at most 72 chars.
* Avoid verbose descriptions or unnecessary details.

* Current branch: !`git rev-parse --abbrev-ref HEAD`
* Project name: !`basename $(git rev-parse --show-toplevel)`
* Diff: !`git diff ${ARGUMENTS:-"--cached"}`

NEVER COMMIT YOURSELF. I WILL COMMIT MYSELF.

