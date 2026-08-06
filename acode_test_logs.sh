#!/bin/bash
mkdir -p ~/pocketcoder_logs/acode

echo "[*] Capturing Android logcat..."
logcat -d > ~/pocketcoder_logs/acode/logcat.txt

echo "[*] Capturing Termux system info..."
uname -a > ~/pocketcoder_logs/acode/system.txt
termux-info >> ~/pocketcoder_logs/acode/system.txt

echo "[*] Done. Logs saved to ~/pocketcoder_logs/acode/"
