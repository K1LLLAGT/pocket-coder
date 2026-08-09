# Starter issues (copy into GitHub issues)

1. Remove Acode branding and assets
   - Description: Replace logos, splash screens, icons, and any Acode-branded text. Update package and app name to "PocketCoder".
   - Labels: enhancement, high

2. Create initial project skeleton + repo metadata
   - Description: Add README, ROADMAP, CONTRIBUTING, CODE_OF_CONDUCT, LICENSE, and default issue/PR templates.
   - Labels: docs, good-first-issue

3. Add a simple web-preview dev script
   - Description: Add an npm script `dev` that launches a lightweight web preview for editing HTML/CSS/JS files for fast iteration.
   - Labels: enhancement, help-wanted

4. Add Pyodide integration (alpha)
   - Description: Add a minimal UI to run Python files via Pyodide and display output in an in-app console.
   - Labels: enhancement, medium

5. Create plugin API spec (v0)
   - Description: Draft a plugin API that allows sandboxed extensions to add commands and UI panels.
   - Labels: design, docs

6. Add a simple "Run JS" sandbox using iframe/WASM
   - Description: Implement a safe runtime for executing JS snippets without full device permissions.
   - Labels: enhancement

7. Add Yjs-CRDT proof-of-concept for real-time editing
   - Description: Wire up a Yjs room with WebRTC signaling and a small UI to join a session.
   - Labels: enhancement, research

8. Add a "models" folder UX and docs for local LLMs
   - Description: Document how users can drop quantized models into app storage, and create a UI to list/remove models.
   - Labels: docs, help-wanted

9. Accessibility audit (initial)
   - Description: Test editor with TalkBack and document top 10 accessibility fixes.
   - Labels: accessibility, good-first-issue

10. Add donation/sponsorship guidance (Open Collective / GitHub Sponsors)
    - Description: Add a FUNDING.yml and a donations section in README.
    - Labels: docs

11. Add privacy & security guidelines for plugins and model usage
    - Description: Create a SECURITY.md or PRIVACY.md describing model handling and plugin sandboxing rules.
    - Labels: security, docs

12. Create example lesson for a "Hello Python" interactive quest
    - Description: A small step-by-step lesson that runs a Python script in Pyodide and evaluates the output.
    - Labels: enhancement, good-first-issue

Project board suggestion:
- Columns: Backlog / To Do / In Progress / Review / Done
- Fill with the items above and tag community maintainers.
