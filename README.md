# PocketCoder

PocketCoder — a free, mobile-first code editor and on-device dev environment.  
Tagline: Code anywhere. Offline-first. Community-first.

Mission
-------
PocketCoder is a community-built, MIT-licensed fork inspired by Acode. Our mission is to provide a powerful, privacy-respecting mobile development environment that stays free forever — honoring the spirit of open-source and enabling anyone to learn, build, and ship code from their pocket.

Status
------
Early-stage. This repository is a forked starting point (from Acode) and is being reworked into a platform focused on:
- On-device code execution for multiple languages (WASM/Pyodide/Deno/Node)
- Optional on-device LLM-based code assistance (user-supplied models)
- P2P, privacy-first collaboration
- Accessibility and education-first UX

Key features (target)
- Lightweight code editor (mobile-optimized)
- Web preview for HTML/CSS/JS projects
- On-device Python via Pyodide
- Local, optional LLM integration (llama.cpp/ggml) for suggestions (user-provided models)
- CRDT-based P2P collaboration (Yjs + WebRTC)
- Export/import projects, zip, and Git bundle support
- Plugin architecture for community extensions

Why fork Acode?
--------------
Acode provides a solid, mobile-friendly editor foundation (MIT licensed). PocketCoder will remove branding, extend runtimes and offline AI capability, and focus on privacy-first, community-run features.

Getting started (developer)
---------------------------
1. Fork Acode (https://github.com/Acode-Foundation/Acode) into your account OR create a new repo and import.
2. Rename the project to `pocket-coder` (update package.json and Cordova config as needed).
3. Remove or replace all Acode branded assets (icons, logos). See "Branding/Legal" below.
4. Install deps:
   - Clone your fork: git clone https://github.com/<you>/pocket-coder.git
   - cd pocket-coder
   - npm install
5. Platform builds:
   - This project uses Cordova / webview for Android. See the original Acode README for exact platform build steps (Android SDK, Java JDK, Cordova CLI).
   - For web preview / local development, follow the web dev instructions in this repo (see /docs/dev for platform-agnostic dev notes). (If you want, I can add a simple `npm run dev` web-preview config.)

Branding / legal note
---------------------
- The upstream Acode project is MIT-licensed — you may fork and modify the code.
- Do NOT reuse Acode logos or trademarked names without permission. Replace icons, splash screens, and any trademarked text.
- Keep the MIT license file and add attribution in the README (we include a short acknowledgement below).
- This project aims to remain free and open; we encourage donation links (Open Collective / GitHub Sponsors) but no closed-source gates on core features.

Attribution
-----------
PocketCoder is forked from Acode (https://github.com/Acode-Foundation/Acode). Original project licensed under MIT.

How to help
-----------
- Try the app, file issues, and submit PRs.
- Build small plugins / runtimes (Pyodide, WASM runtimes).
- Test on different Android devices and help with accessibility improvements.

Funding / sustainability
------------------------
Core project remains free. Suggested models:
- Donations (Open Collective / GitHub Sponsors)
- Optional paid hosting for auxiliary services (relay/signaling servers, optional cloud inference) — core features always free.

Contact
-------
Create issues or PRs on this repo. Join the discussion in the repo's Discussions tab (or add a chat link later).

License
-------
MIT (inherited). See LICENSE.md.
