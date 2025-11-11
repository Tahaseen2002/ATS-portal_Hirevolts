@echo off
echo Starting backend server...
echo.
echo Make sure you have updated the MongoDB password in backend\.env file!
echo.
echo Swagger API Documentation will be available at:
echo http://localhost:5000/api-docs
echo.
cd /d "%~dp0backend"
call npm run dev
