@echo off
echo Setting up GitHub repository connection...
echo.

echo Updating remote origin with correct URL...
git remote set-url origin https://github.com/IzzyBlau1/izzyz-tos-nt-code-converter.git
if %errorlevel% neq 0 (
    echo Error: Failed to update remote origin
    pause
    exit /b 1
)
echo Remote origin updated successfully!

echo.
echo Pushing code to GitHub...
git push -u origin main
if %errorlevel% neq 0 (
    echo Error: Failed to push to GitHub
    echo Please make sure you have created the repository on GitHub first
    pause
    exit /b 1
)
echo Code pushed to GitHub successfully!

echo.
echo Setup complete! Your project is now connected to GitHub.
echo Repository URL: https://github.com/IzzyBlau1/izzyz-tos-nt-code-converter
pause
