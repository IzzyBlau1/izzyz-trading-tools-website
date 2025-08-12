@echo off
echo ========================================
echo Izzyz Trading Tools Monorepo Setup
echo ========================================
echo.

echo Step 1: Committing initial structure...
call commit-structure.bat

echo.
echo Step 2: Migrating TOS Converter...
call migrate-converter.bat

echo.
echo Step 3: Migrating Pre-market Scanner...
call migrate-scanner.bat

echo.
echo Step 4: Creating Main Website...
call create-website.bat

echo.
echo ========================================
echo Setup Complete!
echo ========================================
echo.
echo Your monorepo structure is now ready:
echo.
echo izzyz-trading-tools-website/
echo ├── apps/
echo │   ├── converter/     ^<-- TOS to NT Converter
echo │   ├── scanner/       ^<-- Pre-market Scanner
echo │   └── website/       ^<-- Main Website
echo ├── packages/          ^<-- Shared code
echo └── docs/              ^<-- Documentation
echo.
echo Next steps:
echo 1. Run 'npm install' in each app directory
echo 2. Start development with 'npm run dev'
echo 3. Deploy to Vercel when ready
echo.
pause
