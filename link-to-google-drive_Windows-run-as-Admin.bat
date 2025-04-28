@echo off
setlocal enabledelayedexpansion

:: Open folder picker with PowerShell and capture result safely
set "psCommand=Add-Type -AssemblyName System.Windows.Forms; $f=New-Object System.Windows.Forms.FolderBrowserDialog; $f.Description='Please select the Google Drive directory with the blog files in it (e.g. "attachments", "posts", etc folders)'; if($f.ShowDialog() -eq 'OK'){Write-Output $f.SelectedPath}"
for /f "usebackq tokens=*" %%A in (`powershell -noprofile -command "%psCommand%"`) do (
    set "sourceFolder=%%A"
)

:: If user cancels
if "%sourceFolder%"=="" (
    echo No folder selected. Exiting.
    pause
    exit /b
)

:: Normalize paths (remove quotes if any)
set "sourceFolder=%sourceFolder:"=%"

:: Get the directory where the batch script itself is
set "destPath=%~dp0blog-vault\"

:: List of folders to link
set "foldersToLink=attachments posts .trash pages config"

:: Create destination folder if not exist
if not exist "%destPath%" (
    mkdir "%destPath%"
)

:: Loop and create symlinks
for %%F in (%foldersToLink%) do (
    set "sourceItem=%sourceFolder%\%%F"
    set "destItem=%destPath%%%F"

    echo Linking "%%F"...
    echo "!destItem!" "!sourceItem!"

    if exist "!destItem!" (
        rmdir "!destItem!" >nul 2>&1
        del "!destItem!" >nul 2>&1
    )

    mklink /D "!destItem!" "!sourceItem!"
)

:: Done
echo.
echo Linked to blog files successfully!
pause
