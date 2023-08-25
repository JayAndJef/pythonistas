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

# create folder

# create venv in folder and install libraries

# welcome message

echo "Installation done! Open the directory 'pythonistas' in a code editor to get started!"