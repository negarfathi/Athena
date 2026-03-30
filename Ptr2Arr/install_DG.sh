#!/bin/bash

echo "Installing DG..."

if ! command -v git &> /dev/null; then
    echo "Git is not installed. Please install Git first."
    exit 1
fi

if ! command -v docker &> /dev/null; then
    echo "Docker is not installed. Please install Docker first."
    exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

if docker pull mchalupa/dg && \
   CONTAINER_ID=$(docker run -dit -v "$SCRIPT_DIR":/PATH mchalupa/dg) && \
   docker exec "$CONTAINER_ID" bash -c "
      cd /PATH && \
      rm -rf dg && \
      git clone https://github.com/mchalupa/dg && \
      cd dg && \
      mkdir -p build && \
      cd build && \
      cmake .. && \
      make -j\$(nproc)
   " && \
   docker commit "$CONTAINER_ID" dg
then
    docker stop "$CONTAINER_ID"
    docker rm "$CONTAINER_ID"
    echo "DG successfully installed."
else
    [ -n "$CONTAINER_ID" ] && docker stop "$CONTAINER_ID"
    [ -n "$CONTAINER_ID" ] && docker rm "$CONTAINER_ID"
    echo "Failed to install DG."
fi