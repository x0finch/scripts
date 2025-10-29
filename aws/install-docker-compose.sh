#!/bin/bash

set -e

echo "Downloading docker-compose..."
sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose

echo "Setting executable permissions..."
sudo chmod +x /usr/local/bin/docker-compose

echo "Verifying installation..."
docker-compose version

echo "Docker Compose installation completed!"

