#!/bin/bash
set -e

BASE=~/pocketcoder_logs/run_on_phone
mkdir -p "$BASE"

echo "[*] === Pocket‑Coder Runtime Test ==="

echo "[*] Checking device info..."
{
  echo "=== uname ==="
  uname -a
  echo "=== termux-info ==="
  termux-info
  echo "=== Android version ==="
  getprop ro.build.version.release
  echo "=== Device model ==="
  getprop ro.product.model
} > "$BASE/device_info.txt"

echo "[*] Checking PocketCoder installation..."
pm list packages | grep -i acode > "$BASE/acode_installed.txt" || true

echo "[*] Capturing Android logs (logcat)..."
logcat -d > "$BASE/logcat_full.txt"

echo "[*] Filtering PocketCoder logs..."
grep -i acode "$BASE/logcat_full.txt" > "$BASE/logcat_acode.txt" || true

echo "[*] Preparing Pocket‑Coder web build test..."
mkdir -p "$BASE/web_test"

echo "[*] Copying Pocket‑Coder www folder..."
cp -r ~/pocket-coder/www "$BASE/web_test/www" || echo "[warn] www folder missing"

echo "[*] Creating local test server..."
PORT=8123
echo "[*] Starting Python HTTP server on port $PORT..."
python3 -m http.server "$PORT" --directory "$BASE/web_test/www" \
  2>&1 | tee "$BASE/local_server.log" &
SERVER_PID=$!

sleep 3

echo "[*] Testing local server..."
curl -I "http://127.0.0.1:$PORT" > "$BASE/server_test.txt" || true

echo "[*] Instructions:"
echo "1. Open PocketCoder"
echo "2. Tap 'Open Folder'"
echo "3. Navigate to: $BASE/web_test/www"
echo "4. Open index.html"
echo "5. Test Pocket‑Coder UI"
echo "6. Return here and press ENTER to stop logging"

read -p "[*] Press ENTER when done testing..."

echo "[*] Killing server..."
kill "$SERVER_PID" || true

echo "[*] Capturing final logcat..."
logcat -d > "$BASE/logcat_after.txt"

echo "[*] Filtering Pocket‑Coder errors..."
grep -i error "$BASE/logcat_after.txt" > "$BASE/pocketcoder_errors.txt" || true

echo "[*] All logs saved to: $BASE"
