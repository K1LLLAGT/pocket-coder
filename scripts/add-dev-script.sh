#!/usr/bin/env bash
set -euo pipefail
if [ ! -f package.json ]; then
  echo "No package.json found; skipping."
  exit 0
fi
node - <<'NODE'
const fs = require('fs');
const p = 'package.json';
const j = JSON.parse(fs.readFileSync(p, 'utf8'));
j.scripts = j.scripts || {};
j.scripts.dev = j.scripts.dev || "npx http-server www -p 8080";
j.scripts.start = j.scripts.start || "npm run dev";
fs.writeFileSync(p, JSON.stringify(j, null, 2) + "\n");
console.log("Updated package.json scripts");
NODE
