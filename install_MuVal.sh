#!/bin/bash

echo "Installing MuVal..."

if ! command -v git &> /dev/null; then
    echo "Git is not installed. Please install Git first."
    exit 1
fi

if ! command -v docker &> /dev/null; then
    echo "Docker is not installed. Please install Docker first."
    exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

if cd "$SCRIPT_DIR" && \
    rm -rf muval-master && \
    rm -rf muval-fse2026 && \
    git clone https://github.com/negarfathi/muval-master.git && \
    git clone https://github.com/negarfathi/muval-fse2026.git && \
    cd muval-master && \
    docker build -t muval-master . && \
    cd ../muval-fse2026 && \
    docker build -t muval-fse2026 .
then
    echo "MuVal successfully installed."
else
    echo "Failed to install MuVal."
fi