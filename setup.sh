#!/bin/bash

# Detectar la versión de Python
if command -v python3 &>/dev/null; then
    PYTHON_CMD=python3
elif command -v python &>/dev/null; then
    PYTHON_CMD=python
else
    echo "There is no Python installed in the system." >&2
    exit 1
fi

echo "Creating virtual environment using $PYTHON_CMD..."
$PYTHON_CMD -m venv .env

source .env/bin/activate

pip install --upgrade pip
pip install ipykernel

echo "Now you have to chose .env as the kernel in Jupyter Notebook"