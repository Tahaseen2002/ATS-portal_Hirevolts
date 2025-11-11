@echo off
echo Installing backend dependencies...
cd /d "%~dp0backend"
call npm install
echo.
echo Installation complete!
echo.
echo To start the backend server, run: npm run dev
pause
