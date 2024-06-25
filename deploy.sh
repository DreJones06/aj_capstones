#!/bin/bash

docker-compose up -d

# Check if the deployment was successful
if [ $? -eq 0 ]; then
    echo "Docker image deployed successfully."
else
    echo "Failed to deploy Docker image."
    exit 1
fi
