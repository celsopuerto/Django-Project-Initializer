# Django Project Setup Script

A batch script to automate the setup of a new Django project. It creates a virtual environment, installs necessary dependencies (like Django), and generates a Django project along with an app. The script also offers an option to open the project in Visual Studio Code after the setup.

## Features
- Creates a virtual environment for your Django project.
- Installs Django if not already installed.
- Automatically generates a Django project and app.
- Offers an option to open the project in Visual Studio Code.
- Provides an option to download and install Python if it's not already installed.

## Prerequisites
- **Python**: This script requires Python to be installed on your machine. If Python is not installed, the script will provide an option to download and install it.
- **Visual Studio Code (optional)**: If you choose, the script can open the project in Visual Studio Code once the setup is complete.

## How to Use

1. Download or clone this repository to your local machine.
2. Open the command prompt or terminal and navigate to the directory where the batch script is located.
3. Run the script by typing:
   ```bash
   setup_django_project.bat
  Follow the on-screen prompts:

4. Enter the directory where you want to create the Django project (leave blank for the current directory).
- Enter the desired project and app names.
- If Python is not installed, the script will prompt you to download and install it.
- The script will create a virtual environment, install Django, and generate the Django project and app.
5. After the setup, you will be prompted if you want to open the project in Visual Studio Code. Enter Y to open the project or N to skip.
