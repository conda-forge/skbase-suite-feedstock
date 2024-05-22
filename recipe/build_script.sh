#!/bin/bash
set -e
set -x  # Enable script debugging for verbose logging

# Check for arm64 architecture
if [ "$(uname -m)" == "aarch64" ]; then
    echo "Building for arm64 architecture"
    # Set any architecture-specific flags if needed
    export CFLAGS="$CFLAGS -march=armv8-a"
    export CXXFLAGS="$CXXFLAGS -march=armv8-a"
fi

# Install the package
$PYTHON -m pip install . --no-deps -vv --no-build-isolation
