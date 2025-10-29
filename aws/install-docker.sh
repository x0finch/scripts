#!/bin/bash

set -e

echo "Updating system packages..."
sudo yum update -y

echo "Installing Docker..."
sudo yum install -y docker

echo "Starting Docker service..."
sudo service docker start

echo "Adding ec2-user to docker group..."
sudo usermod -a -G docker ec2-user

echo "Docker installation completed! Please re-login to apply the changes."
