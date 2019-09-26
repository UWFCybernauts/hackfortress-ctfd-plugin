#!/usr/bin/env bash

pip show grpcio-tools 2>&1 >/dev/null

if [[ $? -ne 0 ]]; then
    echo "It doesn't appear as though you have the required dependencies installed."
    echo "Please install them using \`pip install -r requirements.txt\`"
    exit 1
else
    echo "Dependencies installed."
    exit 0
fi
