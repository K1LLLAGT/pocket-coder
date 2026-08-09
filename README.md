```
██████╗  ██████╗  ██████╗██╗  ██╗███████╗████████╗     ██████╗ ██████╗ ██████╗ ███████╗██████╗ 
██╔══██╗██╔═══██╗██╔════╝██║ ██╔╝██╔════╝╚══██╔══╝    ██╔════╝██╔═══██╗██╔══██╗██╔════╝██╔══██╗
██████╔╝██║   ██║██║     █████╔╝ █████╗     ██║       ██║     ██║   ██║██║  ██║█████╗  ██████╔╝
██╔═══╝ ██║   ██║██║     ██╔═██╗ ██╔══╝     ██║       ██║     ██║   ██║██║  ██║██╔══╝  ██╔══██╗
██║     ╚██████╔╝╚██████╗██║  ██╗███████╗   ██║       ╚██████╗╚██████╔╝██████╔╝███████╗██║  ██║
╚═╝      ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝   ╚═╝        ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝
```

<div align="center">

> **Code anywhere. Ship everywhere.**

[![License: MIT](https://img.shields.io/badge/License-MIT-6C63FF?style=for-the-badge)](LICENSE)
[![Version](https://img.shields.io/badge/Version-1.0.0-FF6584?style=for-the-badge)](#)
[![PRs Welcome](https://img.shields.io/badge/PRs-Welcome-43D9AD?style=for-the-badge)](CONTRIBUTING.md)
[![Platform](https://img.shields.io/badge/Platform-Web%20%7C%20Mobile%20%7C%20Desktop-FFA500?style=for-the-badge)](#)

</div>

---

## ✨ What is PocketCoder?

**PocketCoder** is a lightweight, blazing-fast coding environment designed to live in your pocket. Whether you're on your phone on the subway, your tablet at a coffee shop, or your laptop between meetings — PocketCoder gives you a full-featured dev experience with zero friction.

No bloat. No complex setup. Just open and code.

---

## 🚀 Features

| Feature | Description |
|---|---|
| ⚡ **Instant Boot** | Opens in under a second — no waiting, no splash screens |
| 🎨 **Syntax Highlighting** | Rich highlighting across 50+ languages out of the box |
| 🤖 **AI Code Assist** | Inline suggestions, completions, and explanations powered by AI |
| 📁 **Project Manager** | Organize multiple projects with tabs, search, and quick-switch |
| 🌙 **Dark / Light Themes** | Polished themes that look great in any lighting condition |
| 📡 **Offline First** | Full functionality without internet — sync when you're back online |
| 🔒 **Local Execution** | Run code locally with sandboxed runtimes for safety and speed |
| 🔗 **Git Integration** | Clone, commit, push, and pull — all from the app |
| 📋 **Snippet Library** | Save and reuse your favorite code snippets across projects |
| 🖥️ **Cross-Platform** | Works seamlessly on iOS, Android, Web, and Desktop |

---

## 📦 Installation

### Web (No Install Needed)
Visit [pocketcoder.app](https://pocketcoder.app) and start coding instantly in your browser.

### npm / Node.js
```bash
npm install -g pocket-coder
pocket-coder
```

### Homebrew (macOS)
```bash
brew tap pocketcoder/tap
brew install pocket-coder
```

### Docker
```bash
docker pull pocketcoder/pocketcoder:latest
docker run -p 3000:3000 pocketcoder/pocketcoder
```

### From Source
```bash
git clone https://github.com/youruser/pocket-coder.git
cd pocket-coder
npm install
npm run build
npm start
```

---

## 🛠️ Usage

### Start the App
```bash
pocket-coder              # Launch with default settings
pocket-coder --port 4000  # Launch on a custom port
pocket-coder --open       # Launch and open in browser automatically
```

### Open a Project
```bash
pocket-coder ./my-project       # Open a specific folder
pocket-coder --new my-app       # Scaffold a new project
```

### Key Keyboard Shortcuts

| Shortcut | Action |
|---|---|
| `Ctrl + P` / `⌘ + P` | Quick file open |
| `Ctrl + Shift + P` / `⌘ + Shift + P` | Command palette |
| `Ctrl + `` ` `` ` | Toggle integrated terminal |
| `Ctrl + /` | Toggle line comment |
| `Alt + Shift + F` | Format document |
| `Ctrl + Shift + G` | Open Git panel |

---

## ⚙️ Configuration

PocketCoder is configured via a `pocketcoder.config.json` file in your project root (or `~/.pocketcoder/config.json` for global settings).

```json
{
  "theme": "dark",
  "fontSize": 14,
  "tabSize": 2,
  "wordWrap": true,
  "autosave": true,
  "autosaveDelay": 1000,
  "aiAssist": {
    "enabled": true,
    "provider": "openai",
    "model": "gpt-4o"
  },
  "git": {
    "autoFetch": true,
    "confirmBeforePush": true
  },
  "terminal": {
    "shell": "/bin/zsh",
    "fontSize": 13
  }
}
```

### Environment Variables

| Variable | Default | Description |
|---|---|---|
| `POCKETCODER_PORT` | `3000` | Port the server listens on |
| `POCKETCODER_THEME` | `dark` | UI theme (`dark` or `light`) |
| `POCKETCODER_AI_KEY` | _(none)_ | API key for AI Assist feature |
| `POCKETCODER_DATA_DIR` | `~/.pocketcoder` | Directory for config and data |

---

## 🧱 Tech Stack

<div align="center">

| Layer | Technology |
|---|---|
| **Frontend** | React + TypeScript + Vite |
| **Editor Core** | Monaco Editor (VS Code's engine) |
| **Backend** | Node.js + Express |
| **Runtimes** | WebAssembly sandboxed interpreters |
| **AI** | OpenAI / Anthropic API (pluggable) |
| **Storage** | IndexedDB (local) + optional cloud sync |
| **Mobile** | React Native / Capacitor |

</div>

---

## 🗺️ Roadmap

- [x] Core editor with syntax highlighting
- [x] AI code completions
- [x] Git integration (clone, commit, push)
- [x] Mobile-responsive layout
- [ ] 🔜 Collaborative editing (multiplayer)
- [ ] 🔜 Plugin / extension marketplace
- [ ] 🔜 Built-in database explorer
- [ ] 🔜 One-click deploy to Vercel / Netlify / Fly.io
- [ ] 🔜 Voice-to-code via Whisper

---

## 🤝 Contributing

Contributions are what make open source amazing. All contributions are welcome — big or small!

```bash
# 1. Fork the repo and clone your fork
git clone https://github.com/YOUR_USERNAME/pocket-coder.git

# 2. Create a feature branch
git checkout -b feature/amazing-new-thing

# 3. Make your changes and commit
git commit -m "feat: add amazing new thing"

# 4. Push and open a Pull Request
git push origin feature/amazing-new-thing
```

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for our code of conduct and detailed contribution guidelines.

---

## 🐛 Bug Reports & Feature Requests

Found a bug? Have an idea? [Open an issue](https://github.com/youruser/pocket-coder/issues) — we read every one.

When reporting a bug, please include:
- Your OS and PocketCoder version
- Steps to reproduce
- Expected vs. actual behavior
- Any relevant logs or screenshots

---

## 📄 License

PocketCoder is released under the **MIT License** — free for personal and commercial use.

See [LICENSE](LICENSE) for the full text.

---

## 🙏 Acknowledgements

- [Monaco Editor](https://microsoft.github.io/monaco-editor/) — the powerful editor engine under the hood
- [CodeMirror](https://codemirror.net/) — mobile editor fallback
- Every contributor and open-source project that made this possible ❤️

---

<div align="center">

Made with ❤️ by the PocketCoder team

⭐ **If PocketCoder helps you, please star the repo!** ⭐

</div>
