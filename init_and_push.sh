#!/usr/bin/env bash
# Publish this folder to GitHub or Gitee.
# 1) Create an EMPTY PUBLIC repository first (no README, no .gitignore).
# 2) Replace <OWNER> and <REPO> below; choose ONE remote line.
# 3) Run:  bash init_and_push.sh
set -euo pipefail

OWNER="<OWNER>"
REPO="<REPO>"

cd "$(dirname "$0")"

if [ ! -f fig1/fig1.Rmd ] || [ ! -f fig2/fig2.Rmd ]; then
  echo "ERROR: run from the repository root (the extracted folder, NOT the ZIP)." >&2; exit 1
fi

git init -b main
git add .
git commit -m "Add source data and R Markdown code for main figures 1-2"

git remote add origin "https://github.com/${OWNER}/${REPO}.git"
# git remote add origin "https://gitee.com/${OWNER}/${REPO}.git"

git push -u origin main
git tag -a v1.0 -m "Main figure source data and code, v1.0"
git push origin v1.0

echo "Done. Verify https://github.com/${OWNER}/${REPO} (or the Gitee URL) opens without login"
echo "and that fig1/fig1.Rmd and fig2/fig2.Rmd are visible on the web."
echo "HTTPS push requires a personal access token (GitHub) / access token (Gitee)."
