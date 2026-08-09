#!/bin/bash
set -e

BASE=~/pocketcoder_logs/pocketcoder_deep
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

echo "[*] Capturing PocketCoder-specific logs..."
grep -i pocketcoder "$BASE/logcat.txt" > "$BASE/pocketcoder-filtered.txt" || true

echo "[*] Deep test complete. Logs saved to $BASE"
