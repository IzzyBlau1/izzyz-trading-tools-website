@echo off
echo Setting up Izzyz Trading Tools Monorepo...
echo.

echo Creating directory structure...
if not exist "apps" mkdir apps
if not exist "packages" mkdir packages
if not exist "docs" mkdir docs

echo.
echo Directory structure created successfully!
echo.
echo Next steps:
echo 1. Copy your existing converter project to apps/converter/
echo 2. Copy your existing scanner project to apps/scanner/
echo 3. Create the main website in apps/website/
echo.
echo Current structure:
echo izzyz-trading-tools-website/
echo ├── apps/
echo │   ├── converter/     ^<-- Copy your TOS converter here
echo │   ├── scanner/       ^<-- Copy your scanner here
echo │   └── website/       ^<-- Create main website here
echo ├── packages/
echo │   ├── ui/           ^<-- Shared UI components
echo │   ├── utils/        ^<-- Shared utilities
echo │   └── types/        ^<-- Shared TypeScript types
echo └── docs/             ^<-- Documentation
echo.
pause
