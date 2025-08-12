@echo off
echo Migrating Pre-market Scanner to monorepo...
echo.

echo Creating scanner directory...
if not exist "apps\scanner" mkdir apps\scanner

echo.
echo Cloning scanner from GitHub...
git clone https://github.com/IzzyBlau1/izzyz-pre-market-momentum-scanner.git apps\scanner

echo.
echo Removing git history from scanner...
if exist "apps\scanner\.git" rmdir /s /q "apps\scanner\.git"
if exist "apps\scanner\node_modules" rmdir /s /q "apps\scanner\node_modules"

echo.
echo Scanner migrated successfully!
echo Location: apps\scanner\
pause
