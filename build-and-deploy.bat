@echo off
echo ===================================
echo Building documentation locally...
echo ===================================

:: Build the documentation
mkdocs build --clean

if %ERRORLEVEL% NEQ 0 (
    echo Build failed!
    pause
    exit /b 1
)

echo.
echo ===================================
echo Build completed successfully!
echo ===================================
echo.
echo Next steps:
echo 1. Review the built site in the /site directory
echo 2. Commit and push the changes to trigger FTP deployment:
echo    git add site/
echo    git commit -m "Update documentation"
echo    git push origin main
echo.
pause