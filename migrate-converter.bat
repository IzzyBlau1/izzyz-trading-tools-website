@echo off
echo Migrating TOS to NT Converter to monorepo...
echo.

echo Creating converter directory...
if not exist "apps\converter" mkdir apps\converter

echo.
echo Copying files from existing converter project...
xcopy "C:\Users\User\Documents\_AI and Online Projects\CURSOR\izzyz-trading-tools\*" "apps\converter\" /E /I /Y

echo.
echo Removing unnecessary files from converter...
if exist "apps\converter\.git" rmdir /s /q "apps\converter\.git"
if exist "apps\converter\node_modules" rmdir /s /q "apps\converter\node_modules"
if exist "apps\converter\.next" rmdir /s /q "apps\converter\.next"

echo.
echo Converter migrated successfully!
echo Location: apps\converter\
pause
