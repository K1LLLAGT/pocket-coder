#!/bin/bash
mkdir -p ~/pocketcoder_logs/termux_dev

cd ~/pocket-coder || exit

echo "[*] Running npm install..."
npm install 2>&1 | tee ~/pocketcoder_logs/termux_dev/npm-install.log

echo "[*] Running npm run dev..."
npm run dev 2>&1 | tee ~/pocketcoder_logs/termux_dev/npm-dev.log

echo "[*] Collecting environment info..."
{
  echo "Node version: $(node -v)"
  echo "NPM version: $(npm -v)"
  uname -a
  termux-info
} > ~/pocketcoder_logs/termux_dev/env.txt

echo "[*] Done. Logs saved to ~/pocketcoder_logs/termux_dev/"
