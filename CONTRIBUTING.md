# Contributing

These labs are designed for disposable Google Cloud projects. Contributions should be reproducible, scoped to authorized test environments, and free of credentials or personal data.

## Before opening a change

- Run `git diff --check`.
- Verify Markdown image paths and commands from a clean clone.
- Document required APIs, IAM permissions, region or zone, and expected cost.
- Include cleanup commands for billable resources.
- Never commit service-account keys, Terraform state, `.env` files, or access tokens.
