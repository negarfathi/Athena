#!/bin/bash

if ! command -v cmake &> /dev/null; then
    echo "CMake is not installed. Please install CMake first."
    exit 1
fi

if ! command -v make &> /dev/null; then
    echo "Make is not installed. Please install make first."
    exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing Athena's tool dependencies..."

$SCRIPT_DIR/Ptr2Arr/install_DG.sh
$SCRIPT_DIR/install_llvm2KITTeL.sh
$SCRIPT_DIR/install_MuVal.sh

echo "All Athena's tool dependencies successfully installed."

echo "Installing Athena's components..."

if
for dir in Ptr2Arr SemanticAugmentor TypeAnnotator; do
    mkdir -p "$SCRIPT_DIR/$dir/cmake-build-debug" &&
    cd "$SCRIPT_DIR/$dir/cmake-build-debug" &&
    cmake .. &&
    make -j
done
then
    echo "Athena's components successfully installed."
else
    echo "Failed to install Athena's components."
fi

echo "Installing Athena..."

if mkdir -p "$SCRIPT_DIR/cmake-build-debug" && \
   cd "$SCRIPT_DIR/cmake-build-debug" && \
   cmake .. && \
   make -j
then
    echo "Athena successfully installed."
else
    echo "Failed to install Athena."
fi