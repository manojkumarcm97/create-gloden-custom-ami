#!/bin/bash

# Exit immediately if a command fails
set -e

echo "Updating system packages..."
sudo yum update -y

echo "Installing Python3 and pip..."
sudo yum install -y python3 python3-pip

echo "Installing Ansible..."
pip3 install --user ansible

# Add Ansible to PATH (for ec2-user)
echo 'export PATH=$PATH:$HOME/.local/bin' >> /home/ec2-user/.bashrc
source /home/ec2-user/.bashrc

echo "Verifying Ansible installation..."
ansible --version

echo "Ansible installation completed successfully!"