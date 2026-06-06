@echo off
setlocal EnableDelayedExpansion
title App Setup and Launcher

echo ============================================
echo   Dependency Checker and App Launcher
echo ============================================
echo.

:: ── 1. CHECK PYTHON ──────────────────────────────────────────────────────────

echo [1/4] Checking Python...
python --version >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo       Python not found. Downloading and installing Python...
    echo.

    :: Download Python installer using PowerShell
    powershell -Command "Invoke-WebRequest -Uri 'https://www.python.org/ftp/python/3.12.4/python-3.12.4-amd64.exe' -OutFile '%TEMP%\python_installer.exe'"
    if %ERRORLEVEL% NEQ 0 (
        echo [ERROR] Failed to download Python installer.
        echo         Please install Python manually from https://www.python.org/downloads/
        pause
        exit /b 1
    )

    :: Install for current user only (no admin required), add to PATH, include pip
    "%TEMP%\python_installer.exe" /quiet InstallAllUsers=0 PrependPath=1 Include_pip=1 Include_launcher=0
    if %ERRORLEVEL% NEQ 0 (
        echo [ERROR] Python installation failed.
        echo         Please install Python manually from https://www.python.org/downloads/
        pause
        exit /b 1
    )

    del "%TEMP%\python_installer.exe" >nul 2>&1

    :: Refresh PATH in this session
    for /f "tokens=*" %%i in ('powershell -Command "[System.Environment]::GetEnvironmentVariable(\"PATH\",\"Machine\")"') do set "PATH=%%i;%PATH%"

    python --version >nul 2>&1
    if %ERRORLEVEL% NEQ 0 (
        echo [ERROR] Python was installed but is still not accessible.
        echo         Please restart this script after opening a new Command Prompt.
        pause
        exit /b 1
    )
    echo [OK]    Python installed successfully.
) else (
    for /f "tokens=*" %%v in ('python --version 2^>^&1') do echo [OK]    %%v found.
)
echo.

:: ── 2. CHECK PIP ─────────────────────────────────────────────────────────────

echo [2/4] Checking pip...
pip --version >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo       pip not found. Installing pip via ensurepip...
    python -m ensurepip --upgrade
    if %ERRORLEVEL% NEQ 0 (
        echo       ensurepip failed. Trying get-pip.py...
        powershell -Command "Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile '%TEMP%\get-pip.py'"
        python "%TEMP%\get-pip.py"
        del "%TEMP%\get-pip.py" >nul 2>&1
    )

    pip --version >nul 2>&1
    if %ERRORLEVEL% NEQ 0 (
        echo [ERROR] pip could not be installed.
        pause
        exit /b 1
    )
    echo [OK]    pip installed successfully.
) else (
    for /f "tokens=*" %%v in ('pip --version 2^>^&1') do echo [OK]    pip found ^(%%v^).
)
echo.

:: ── 3. CHECK FLASK ───────────────────────────────────────────────────────────

echo [3/4] Checking Flask...
python -c "import flask" >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo       Flask not found. Installing...
    pip install flask
    if %ERRORLEVEL% NEQ 0 (
        echo [ERROR] Failed to install Flask.
        pause
        exit /b 1
    )
    echo [OK]    Flask installed successfully.
) else (
    for /f "tokens=*" %%v in ('python -c "import flask; print(flask.__version__)" 2^>^&1') do echo [OK]    Flask %%v found.
)
echo.

:: ── 4. CHECK PYSERIAL ────────────────────────────────────────────────────────

echo [4/4] Checking pyserial...
python -c "import serial" >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo       pyserial not found. Installing...
    pip install pyserial
    if %ERRORLEVEL% NEQ 0 (
        echo [ERROR] Failed to install pyserial.
        pause
        exit /b 1
    )
    echo [OK]    pyserial installed successfully.
) else (
    for /f "tokens=*" %%v in ('python -c "import serial; print(serial.__version__)" 2^>^&1') do echo [OK]    pyserial %%v found.
)
echo.

:: ── LAUNCH APP ───────────────────────────────────────────────────────────────

echo ============================================
echo   All dependencies satisfied!
echo   Starting app.py ...
echo ============================================
echo.

:: Change to the directory where this batch file lives
cd /d "%~dp0"

if not exist "app.py" (
    echo [ERROR] app.py not found in the script directory:
    echo         %~dp0
    pause
    exit /b 1
)

python app.py
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [ERROR] app.py exited with an error. See output above.
    pause
    exit /b 1
)

endlocal
