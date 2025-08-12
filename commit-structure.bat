@echo off
echo Committing monorepo structure to GitHub...
echo.

echo Adding all files...
git add .

echo.
echo Committing changes...
git commit -m "Initial monorepo structure setup"

echo.
echo Pushing to GitHub...
git push origin main

echo.
echo Structure committed successfully!
echo Repository: https://github.com/IzzyBlau1/izzyz-trading-tools-website
pause
