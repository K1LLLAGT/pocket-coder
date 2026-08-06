# Contributing to PocketCoder

Thanks for your interest — we want PocketCoder to be community-driven.

Getting started
- Fork the repo and create feature branches off main: git checkout -b feat/<short-desc>
- Keep commits focused and atomic. Use conventional commits (feat:, fix:, docs:, chore:).

Development workflow
1. Open an issue to discuss big changes before implementing.
2. Create a pull request from your fork/branch to this repo’s main branch.
3. Include a clear PR description: what you changed, why, and testing steps.
4. Maintainers will review; address review comments and squash/fixup as requested.

Coding style
- JavaScript: follow existing project style. Add ESLint configuration if missing; prefer ES2020+.
- Tests: write tests for runtime-critical logic. We use simple unit tests (Jest) where applicable.
- Docs: add or update docs for any feature or breaking changes.

Branching and PR rules
- Base on main for feature branches.
- One feature per PR where possible.
- Link PRs to issues (use closes #NNN).

Reporting security issues
- If you discover a security vulnerability, please privately contact a maintainer (we will publish a security policy soon).

Issue triage
- Use labels: bug, enhancement, good-first-issue, help-wanted, docs, security.
- If you want to help with triage, message maintainers to request access.
