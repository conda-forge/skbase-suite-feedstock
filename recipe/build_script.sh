#!/bin/bash
set -e
set -x  # Enable script debugging for verbose logging

# Specify the Python executable path for arm64 architecture
PYTHON_EXE="/opt/miniforge3/bin/python"

# Install the package
$PYTHON_EXE -m pip install . --no-deps -vv --no-build-isolation
