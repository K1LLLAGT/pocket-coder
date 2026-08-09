#!/bin/bash
mkdir -p ~/pocketcoder_logs/pocketcoder

echo "[*] Capturing Android logcat..."
logcat -d > ~/pocketcoder_logs/pocketcoder/logcat.txt

echo "[*] Capturing Termux system info..."
uname -a > ~/pocketcoder_logs/pocketcoder/system.txt
termux-info >> ~/pocketcoder_logs/pocketcoder/system.txt

echo "[*] Done. Logs saved to ~/pocketcoder_logs/pocketcoder/"
