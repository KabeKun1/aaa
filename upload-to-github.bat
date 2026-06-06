@echo off
cd /d "%~dp0"

where git >nul 2>&1
if errorlevel 1 (
  echo Git is not installed.
  echo Download it from: https://git-scm.com/download/win
  echo Install, restart this window, then run this script again.
  pause
  exit /b 1
)

if not exist .git (
  git init
  git branch -M main
)

git add .
git status

echo.
set /p CONFIRM=Create commit and prepare for GitHub? (y/n): 
if /i not "%CONFIRM%"=="y" exit /b 0

git commit -m "Initial commit: Chata messaging app with accounts, DMs, and profiles" 2>nul
if errorlevel 1 (
  echo Nothing new to commit, or commit already exists.
)

echo.
echo ============================================
echo  NEXT STEPS
echo ============================================
echo.
echo 1. Create a new repo at: https://github.com/new
echo    - Name: chata
echo    - Leave README/license unchecked
echo    - Click Create repository
echo.
echo 2. Replace YOUR_USERNAME below, then run:
echo.
echo    cd C:\Users\User\Downloads\chat-app
echo    git remote add origin https://github.com/YOUR_USERNAME/chata.git
echo    git push -u origin main
echo.
echo If remote already exists, just run: git push -u origin main
echo.
pause
