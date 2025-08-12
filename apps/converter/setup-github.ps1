Write-Host "Setting up GitHub repository connection..." -ForegroundColor Green
Write-Host ""

Write-Host "Adding remote origin..." -ForegroundColor Yellow
try {
    git remote add origin https://github.com/IzyBlau1/izzyz-tos-nt-code-converter.git
    Write-Host "Remote origin added successfully!" -ForegroundColor Green
} catch {
    Write-Host "Error: Failed to add remote origin" -ForegroundColor Red
    Read-Host "Press Enter to continue"
    exit 1
}

Write-Host ""
Write-Host "Renaming branch to main..." -ForegroundColor Yellow
try {
    git branch -M main
    Write-Host "Branch renamed to main successfully!" -ForegroundColor Green
} catch {
    Write-Host "Error: Failed to rename branch" -ForegroundColor Red
    Read-Host "Press Enter to continue"
    exit 1
}

Write-Host ""
Write-Host "Pushing code to GitHub..." -ForegroundColor Yellow
try {
    git push -u origin main
    Write-Host "Code pushed to GitHub successfully!" -ForegroundColor Green
} catch {
    Write-Host "Error: Failed to push to GitHub" -ForegroundColor Red
    Write-Host "Please make sure you have created the repository on GitHub first" -ForegroundColor Yellow
    Read-Host "Press Enter to continue"
    exit 1
}

Write-Host ""
Write-Host "Setup complete! Your project is now connected to GitHub." -ForegroundColor Green
Write-Host "Repository URL: https://github.com/IzyBlau1/izzyz-tos-nt-code-converter" -ForegroundColor Cyan
Read-Host "Press Enter to continue"
