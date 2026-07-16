@echo off
REM Dev-only local test launcher for the Schedule Composer PWA.
REM
REM Serves this folder over http://localhost:8051/ so it can be exercised
REM exactly like the deployed Pages site (CORS works for Google Sheets,
REM service worker can register, etc.).  Use this when iterating locally
REM before pushing to the public repo.
REM
REM Production users should double-click launch_schedule_composer.bat at
REM the repo root, which just opens the hosted URL.
REM
REM Press Ctrl+C in this window to stop the server.

cd /d "%~dp0"
if not exist "index.html" (
    echo ERROR: index.html not found alongside this batch file.
    pause
    exit /b 1
)

echo.
echo  PAL Schedule Composer - local test server
echo  =========================================
echo  URL: http://localhost:8051/
echo  Press Ctrl+C to stop.
echo.

start "" "http://localhost:8051/"
python -m http.server 8051
