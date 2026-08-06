#!/bin/bash
mkdir -p ~/pocketcoder_logs/linux_build

cd ~/pocket-coder || exit

echo "[*] Checking environment..."
{
  echo "Node: $(node -v)"
  echo "NPM: $(npm -v)"
  echo "Java: $(java -version 2>&1)"
  echo "Gradle: $(gradle -v 2>&1)"
} > ~/pocketcoder_logs/linux_build/env.txt

echo "[*] Running npm install..."
npm install 2>&1 | tee ~/pocketcoder_logs/linux_build/npm-install.log

echo "[*] Running npm run build..."
npm run build 2>&1 | tee ~/pocketcoder_logs/linux_build/npm-build.log

echo "[*] Adding Cordova Android platform..."
cordova platform add android 2>&1 | tee ~/pocketcoder_logs/linux_build/cordova-add.log

echo "[*] Building APK..."
cordova build android --verbose 2>&1 | tee ~/pocketcoder_logs/linux_build/cordova-build.log

echo "[*] Done. Logs saved to ~/pocketcoder_logs/linux_build/"
