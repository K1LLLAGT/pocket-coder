# Security Policy

PocketCoder takes security and privacy seriously, especially given its focus
on on-device code execution, optional local AI models, and P2P
collaboration. This document describes how to report a vulnerability and
the trust model for plugins and local models.

## Reporting a vulnerability

**Please do not report security vulnerabilities through public GitHub
issues, discussions, or pull requests.**

Instead, report them privately using one of the following:

- Open a [GitHub Security Advisory](https://github.com/K1LLLAGT/pocket-coder/security/advisories/new)
  for this repository (preferred — keeps the report private until resolved).
- If advisories aren't available, contact a maintainer privately (e.g. via
  their GitHub profile) with a clear description of the issue.

When reporting, please include:

- A description of the vulnerability and its potential impact.
- Steps to reproduce (proof-of-concept code or a minimal repro, if possible).
- The affected version/commit and platform (e.g. Android version).

We will acknowledge reports as soon as possible and aim to keep you updated
as the issue is triaged and fixed. Since this is a community-run,
volunteer-maintained project, response times are best-effort.

## Supported versions

PocketCoder is early-stage and pre-1.0. Security fixes are made against the
latest `main` branch / most recent release only; older releases are not
separately patched.

## Scope and trust model

- **On-device code execution.** Language runtimes (e.g. Pyodide) run inside
  the app's sandboxed webview. Runtime sandbox escapes or code execution
  outside that sandbox are in scope.
- **Plugins.** Community plugins should be treated as untrusted third-party
  code. Only install plugins from sources you trust. Vulnerabilities that
  let a plugin break out of its intended sandbox/permissions are in scope.
- **Local AI models.** Model files are user-supplied and run entirely
  on-device; PocketCoder does not send your code or prompts to a remote
  inference service. Issues in how model files are loaded/parsed
  (e.g. leading to code execution) are in scope.
- **P2P collaboration.** Collaboration sessions use WebRTC for direct peer
  connections. Vulnerabilities affecting session confidentiality/integrity,
  or a signaling/relay server accessing content it shouldn't, are in scope.
- **This repository's build/CI.** Supply-chain issues in build scripts,
  CI workflows, or dependencies are in scope.

Out of scope: vulnerabilities that only affect the upstream
[Acode](https://github.com/Acode-Foundation/Acode) project and have not been
inherited into this fork, and purely social-engineering or physical-access
attacks.

See also our [Privacy Policy](website/privacy.html) for what data (if any)
is collected by the app and marketing site.
