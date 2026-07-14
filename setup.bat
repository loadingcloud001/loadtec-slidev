@echo off
REM LoadTec Slidev - Windows setup script
REM Run this ONCE in C:\Users\TCL13\loadtec-slidev\ after files are in place.

echo.
echo === LoadTec Slidev Setup ===
echo.

where node >nul 2>nul
if %errorlevel% neq 0 (
  echo ERROR: Node.js not found. Install Node 18+ from https://nodejs.org first.
  pause
  exit /b 1
)
for /f "delims=" %%v in ('node -v') do echo Found Node %%v

where git >nul 2>nul
if %errorlevel% neq 0 (
  echo ERROR: git not found. Install from https://git-scm.com first.
  pause
  exit /b 1
)

echo.
echo Installing dependencies (this also generates package-lock.json)...
call npm install
if %errorlevel% neq 0 (
  echo.
  echo npm install failed. Check network connection.
  pause
  exit /b 1
)

echo.
echo === Setup complete ===
echo.
echo Local preview:    npm run dev   (http://localhost:3030)
echo Production build: npm run build (output in dist\)
echo.
echo Next - Git + GitHub:
echo   git init
echo   git add .
echo   git commit -m "init Slidev deck"
echo   git branch -M main
echo   git remote add origin https://github.com/loadingcloud001/loadtec-slidev.git
echo   git push -u origin main
echo.
echo Then Cloudflare Pages (uses built-in Git Integration, NO secrets needed):
echo   1. https://dash.cloudflare.com -> Workers and Pages -> Create application -> Pages -> Connect to Git
echo   2. Pick repo: loadtec-slidev
echo   3. Build command:    npm run build
echo   4. Build output dir: dist
echo   5. Save and Deploy
echo   6. Custom domains -> Add: slidev.loadingtechnology.app
echo.
pause
