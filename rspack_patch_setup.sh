#!/bin/bash
mkdir -p ~/pocketcoder_logs/rspack_patch

echo "[*] Installing Rust toolchain..."
pkg install -y rust clang make git 2>&1 | tee ~/pocketcoder_logs/rspack_patch/rust-install.log

echo "[*] Cloning Rspack..."
git clone https://github.com/web-infra-dev/rspack.git ~/rspack-src 2>&1 | tee ~/pocketcoder_logs/rspack_patch/git-clone.log

cd ~/rspack-src || exit

echo "[*] Logging Rspack environment..."
{
  echo "Node: $(node -v)"
  echo "Rust: $(rustc -V)"
  echo "Cargo: $(cargo -V)"
  uname -a
  termux-info
} > ~/pocketcoder_logs/rspack_patch/env.txt

echo "[*] Ready for manual patching."
echo "[*] Edit loader: packages/binding/binding.js"
echo "[*] Build native binding: cargo build --target aarch64-linux-android"
echo "[*] Logs saved to ~/pocketcoder_logs/rspack_patch/"
