#!/bin/bash

echo "Installing llvm2KITTeL..."

if ! command -v git &> /dev/null; then
    echo "Git is not installed. Please install Git first."
    exit 1
fi

if ! command -v docker &> /dev/null; then
    echo "Docker is not installed. Please install Docker first."
    exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

if docker pull k0kubun/llvm35 && \
   CONTAINER_ID=$(docker run -dit -v "$SCRIPT_DIR":/PATH k0kubun/llvm35) && \
   docker exec "$CONTAINER_ID" bash -c "
      apt-get update && \
      apt-get install -y cmake gdb libgmp-dev libgmpxx4ldbl && \
      cd /PATH && \
      rm -rf llvm2kittel && \
      git clone https://github.com/negarfathi/llvm2kittel.git && \
      cd llvm2kittel && \
      mkdir -p build && \
      cd build && \
      cmake .. && \
      make -j\$(nproc)
   " && \
   docker commit "$CONTAINER_ID" llvm2kittel
then
    docker stop "$CONTAINER_ID"
    docker rm "$CONTAINER_ID"
    echo "llvm2KITTeL successfully installed."
else
    [ -n "$CONTAINER_ID" ] && docker stop "$CONTAINER_ID"
    [ -n "$CONTAINER_ID" ] && docker rm "$CONTAINER_ID"
    echo "Failed to install llvm2KITTeL."
fi