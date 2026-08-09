#!/bin/bash
set -e

BASE=~/pocketcoder_logs/acode_deep
mkdir -p "$BASE"

echo "[*] Collecting Android logs..."
logcat -d > "$BASE/logcat.txt"

echo "[*] Collecting Termux environment..."
{
  echo "=== uname ==="
  uname -a
  echo "=== termux-info ==="
  termux-info
  echo "=== storage ==="
  ls -R ~/storage
} > "$BASE/env.txt"

echo "[*] Capturing installed apps..."
pm list packages -f > "$BASE/packages.txt"

echo "[*] Capturing Acode-specific logs..."
grep -i acode "$BASE/logcat.txt" > "$BASE/acode-filtered.txt" || true

echo "[*] Deep test complete. Logs saved to $BASE"
