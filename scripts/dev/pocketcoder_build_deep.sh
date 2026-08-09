#!/bin/bash
set -e

BASE=~/pocketcoder_logs/build_deep
mkdir -p "$BASE"

cd ~/pocket-coder || exit

echo "[*] Validating environment..."
{
  echo "Node: $(node -v)"
  echo "NPM: $(npm -v)"
  echo "Java:"
  java -version
  echo "Gradle:"
  gradle -v
  echo "Android SDK:"
  ls -R "$ANDROID_HOME" || echo "ANDROID_HOME not set"
} > "$BASE/env.txt"

echo "[*] Running npm install..."
npm install --verbose 2>&1 | tee "$BASE/npm-install.log"

echo "[*] Running npm run build..."
npm run build 2>&1 | tee "$BASE/npm-build.log"

echo "[*] Adding Cordova Android platform..."
cordova platform add android --verbose 2>&1 | tee "$BASE/cordova-add.log"

echo "[*] Building APK..."
cordova build android --verbose 2>&1 | tee "$BASE/cordova-build.log"

echo "[*] Archiving APK outputs..."
cp -r platforms/android/app/build/outputs "$BASE/outputs" || true

echo "[*] Deep build test complete. Logs saved to $BASE"
