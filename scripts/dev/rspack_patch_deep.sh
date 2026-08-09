#!/bin/bash
set -e

BASE=~/pocketcoder_logs/rspack_patch_deep
mkdir -p "$BASE"

echo "[*] Installing Rust + build tools..."
pkg install -y rust clang make git ndk-sysroot 2>&1 | tee "$BASE/rust-install.log"

echo "[*] Cloning Rspack source..."
git clone https://github.com/web-infra-dev/rspack.git ~/rspack-src 2>&1 | tee "$BASE/git-clone.log"

cd ~/rspack-src || exit

echo "[*] Dumping environment..."
{
  echo "Node: $(node -v)"
  echo "Rust: $(rustc -V)"
  echo "Cargo: $(cargo -V)"
  echo "NDK sysroot:"
  ls -R $PREFIX/ndk-sysroot || true
} > "$BASE/env.txt"

echo "[*] Extracting binding loader..."
grep -R "android" -n packages/binding > "$BASE/binding-loader.txt" || true

echo "[*] Attempting native build..."
cargo build --target aarch64-linux-android 2>&1 | tee "$BASE/cargo-build.log" || true

echo "[*] Searching for generated .node files..."
find . -name "*.node" > "$BASE/generated-nodes.txt" || true

echo "[*] Patch staging complete. Logs saved to $BASE"
