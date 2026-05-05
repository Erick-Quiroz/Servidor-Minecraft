#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -lt 1 ]; then
  echo "Uso: $0 <github_repo_url>"
  exit 1
fi

REPO_URL="$1"

git init
git add README.md .gitignore docker-compose.yml
git commit -m "first commit"
git branch -M main
git remote add origin "$REPO_URL"
git push -u origin main

echo "Repositorio inicializado y subido a $REPO_URL"
