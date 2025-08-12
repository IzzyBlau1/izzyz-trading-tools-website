@echo off
echo Creating main website structure...
echo.

echo Creating website directory...
if not exist "apps\website" mkdir apps\website

echo.
echo Setting up Next.js website...
cd apps\website

echo Creating package.json for website...
echo {> package.json
echo   "name": "izzyz-trading-tools-website",>> package.json
echo   "version": "0.1.0",>> package.json
echo   "private": true,>> package.json
echo   "scripts": {>> package.json
echo     "dev": "next dev",>> package.json
echo     "build": "next build",>> package.json
echo     "start": "next start",>> package.json
echo     "lint": "next lint">> package.json
echo   },>> package.json
echo   "dependencies": {>> package.json
echo     "next": "15.4.6",>> package.json
echo     "react": "^18",>> package.json
echo     "react-dom": "^18">> package.json
echo   },>> package.json
echo   "devDependencies": {>> package.json
echo     "@types/node": "^20",>> package.json
echo     "@types/react": "^18",>> package.json
echo     "@types/react-dom": "^18",>> package.json
echo     "autoprefixer": "^10.0.1",>> package.json
echo     "eslint": "^8",>> package.json
echo     "eslint-config-next": "15.4.6",>> package.json
echo     "postcss": "^8",>> package.json
echo     "tailwindcss": "^3.3.0",>> package.json
echo     "typescript": "^5">> package.json
echo   }>> package.json
echo }>> package.json

echo.
echo Website structure created successfully!
echo Location: apps\website\
echo.
echo Next: Run 'npm install' in apps\website\ to install dependencies
pause
