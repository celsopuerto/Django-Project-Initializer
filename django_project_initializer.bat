@echo off
:: Set text color to light gray (clean look)
color 07

:: Ask for directory, project name, and app name
set /p dir="Enter the directory where you want to create the project (leave blank for current directory): "
if "%dir%"=="" set dir=%cd%

set /p project_name="Enter your Django project name: "
set /p app_name="Enter your Django app name: "

:: Check if Python is installed
python --version >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo Python is not installed. Please install Python first.
    exit /b
)

:: Check if Django is installed
python -c "import django" >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo Django is not installed. Installing Django...
    pip install django
)

:: Create a virtual environment in the specified directory
echo Creating virtual environment in %dir%...
cd /d %dir%
python -m venv venv
IF %ERRORLEVEL% NEQ 0 (
    echo Failed to create virtual environment. Ensure you have Python installed.
    exit /b
)

:: Activate virtual environment
echo Activating virtual environment...
call venv\Scripts\activate

:: Install Django (if not installed already)
echo Installing Django...
pip install django

:: Create Django project
echo Creating Django project %project_name%...
django-admin startproject %project_name%
IF %ERRORLEVEL% NEQ 0 (
    echo Failed to create Django project. Make sure you have Django installed.
    exit /b
)

:: Change to project directory
cd %project_name%

:: Create Django app
echo Creating Django app %app_name%...
python manage.py startapp %app_name%
IF %ERRORLEVEL% NEQ 0 (
    echo Failed to create Django app.
    exit /b
)

:: Ask if user wants to open the project in VSCode
set /p open_vscode="Do you want to open the project in Visual Studio Code? (Y/N): "
IF /I "%open_vscode%"=="Y" (
    echo Opening the project in Visual Studio Code...
    code .
)

:: Done
echo Django project and app created successfully in %dir%\%project_name%.
echo.
echo Made by Celso M. Puerto Jr.
pause
