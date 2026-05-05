@echo off
if "%~1"=="" (
  echo Uso: %~nx0 ^<github_repo_url^
  exit /b 1
)

set REPO_URL=%~1

git init
git add README.md .gitignore docker-compose.yml
git commit -m "first commit"
git branch -M main
git remote add origin %REPO_URL%
git push -u origin main

echo Repositorio inicializado y subido a %REPO_URL%
