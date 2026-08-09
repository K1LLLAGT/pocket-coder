# Security policy

If you discover a security issue in this repository or in included upstream code, report it privately.

## Scope
This repository currently includes upstream Acode integration code and PocketCoder adaptation changes.

## Reporting
Please report security issues privately to the maintainers with:
- affected commit SHA
- reproducible steps
- expected vs actual behavior
- impact assessment

## Current hardening notes
- Review all third-party components before release.
- Sandbox runtime models/plugins; avoid untrusted native code execution.
- Do not commit secrets (API keys, tokens, keystore passwords).
- Keep production security disclosures private until a fix is available.
