#!/bin/bash
set -e
set -x  # Enable script debugging for verbose logging

# Check for arm64 architecture
if [ "$(uname -m)" == "aarch64" ]; then
    echo "Building for arm64 architecture"
    # Ensure the correct Python executable is used
    export PYTHON_EXE="$(which python)"
else
    export PYTHON_EXE="$PYTHON"
fi

# Install the package
$PYTHON_EXE -m pip install . --no-deps -vv --no-build-isolation
