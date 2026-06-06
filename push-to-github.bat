@echo off
cd /d "%~dp0"

where git >nul 2>&1
if errorlevel 1 (
  echo Git is not installed. Install from https://git-scm.com/download/win
  pause
  exit /b 1
)

set /p GITHUB_USER=Enter your GitHub username: 
if "%GITHUB_USER%"=="" (
  echo Username is required.
  pause
  exit /b 1
)

git remote remove origin 2>nul
git remote add origin https://github.com/%GITHUB_USER%/chata.git

echo.
echo Pushing to https://github.com/%GITHUB_USER%/chata.git
echo A browser window may open to sign in to GitHub.
echo.

git push -u origin main
if errorlevel 1 (
  echo.
  echo Push failed. Make sure:
  echo  - The repo "chata" exists on your GitHub account
  echo  - You are signed in when the browser opens
  echo  - The repo was created empty (no README)
  pause
  exit /b 1
)

echo.
echo Success! Your repo is live at:
echo https://github.com/%GITHUB_USER%/chata
pause
