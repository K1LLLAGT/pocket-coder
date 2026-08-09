#!/bin/bash
set -e

BASE=~/pocketcoder_logs/dev_deep
mkdir -p "$BASE"

cd ~/pocket-coder || exit

echo "[*] Dumping environment..."
{
  echo "Node: $(node -v)"
  echo "NPM: $(npm -v)"
  echo "Yarn: $(yarn -v 2>/dev/null || echo 'no yarn')"
  echo "CPU: $(lscpu 2>/dev/null || echo 'no lscpu')"
  echo "Memory:"
  free -h || true
  echo "Disk:"
  df -h
  echo "Network:"
  ip addr
} > "$BASE/env.txt"

echo "[*] Running npm install with full debug..."
npm install --verbose 2>&1 | tee "$BASE/npm-install.log"

echo "[*] Tracing Node module resolution..."
NODE_DEBUG=module npm run dev 2>&1 | tee "$BASE/node-resolution.log" || true

echo "[*] Running dev server..."
npm run dev 2>&1 | tee "$BASE/dev-server.log" || true

echo "[*] Extracting Rspack crash logs..."
grep -i rspack "$BASE/dev-server.log" > "$BASE/rspack-crash.txt" || true

echo "[*] Deep dev test complete. Logs saved to $BASE"
