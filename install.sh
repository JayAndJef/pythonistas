#!/usr/bin/env bash
set -euo pipefail

# check dependencies

echo "Checking requirements..."

if [ -x "$(command -v git)" ]
then
    echo "Git found!"
else
    echo "ERROR: Cannot find git on your system"
    echo "Please install git!"
    exit 1
fi

if [ -x "$(command -v python3)" ]
then
    PY="$(command -v python3)"
    echo "Python found! (python3)"
elif [ -x "$(command -v python)" ]
then
    PY="$(command -v python)"
    echo "Python found! (python)"
else
    echo "ERROR: Cannot find python 3 on your system! (ran 'python', 'python3')"
    echo "Please install python!"
    exit 1
fi

# create folder, clone repo

echo "Creating directory and installing libraries..."

Path=${1:-pythonistas/}
echo "Cloning Git Repo at $Path..."
git clone -q https://github.com/JayAndJef/pythonistas "$Path"

# create venv in folder and install libraries

cd "$Path"
$PY -m venv venv

echo "Creating venv..."

if source venv/bin/activate
then 
    echo "Unix shell detected: venv/bin/activate"
elif .\venv\Scripts\Activate.ps1
then
    echo "Powershell detected: this install might be unstable"
else
    echo "Could not install libraries!"
    exit 1
fi
echo "Installing required dependancies..."

pip install -r requirements.txt

# welcome message

echo "Installation done! Open the directory 'pythonistas' in a code editor and activate the venv to get started!"