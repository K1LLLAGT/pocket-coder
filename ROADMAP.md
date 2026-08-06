# PocketCoder Roadmap (high-level)

Primary direction: Offline AI Pair-Programmer + Local Execution Sandbox (mobile-first, privacy-respecting)

Philosophy
- Keep core features free and open.
- Prefer on-device and P2P-first approaches.
- Allow community-contributed runtimes and plugins.

Milestones (first 90 days)

MVP-0 (days 0–7): Project bootstrap
- Fork Acode, remove branding, rename to PocketCoder.
- Add README, ROADMAP, CONTRIBUTING, CODE_OF_CONDUCT.
- Create initial issues and project board.

MVP-1 (weeks 2–4): Web preview + project management
- HTML/CSS/JS live preview inside the app (webview-based).
- File manager and project import/export (zip).
- Basic plugin API scaffolding.

MVP-2 (weeks 5–8): Language runtimes (local sandbox)
- Add Pyodide for in-app Python REPL and script execution.
- Add a safe web-based JS runtime preview (isolated iframe/WASM).
- Provide a “Run” action in the editor for supported file types.

MVP-3 (weeks 9–12): Local AI assistance (alpha)
- Integrate an optional local LLM workflow (llama.cpp/ggml) with a simple adapter:
  - Users can drop quantized models into app storage.
  - Provide inference through a JNI or WASM bridge (alpha).
- Add a “suggest” command for inline completions and simple explainers.
- Plugin to manage model files (list, remove).

MVP-4 (weeks 13–16): P2P collaboration alpha
- Basic CRDT-based real-time text editing using Yjs + WebRTC signaling (relay optional).
- Room join/leave UI, invite links.
- E2E encryption option for sessions.

MVP-5 (weeks 17–20): Polish, accessibility, and lessons
- Accessibility improvements (screen reader navigation, voice commands).
- Pilot a gamified lesson (playground + auto-evaluation).
- Documentation, examples, and community onboarding.

Longer-term
- Add more language runtimes via WASM (Rust, Go, TinyGo).
- Decentralized plugin marketplace.
- On-device packaging/build tools (APK/AAB stub via remote or Termux integration).

Technical priorities
1. Security & sandboxing for any execution runtime
2. UX for handling local models (privacy, disk usage)
3. Expand plugin API with strict sandboxing
4. Community governance for marketplace and moderation
