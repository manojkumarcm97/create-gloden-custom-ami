#!/bin/bash
set -e

echo "Updating system..."
sudo dnf update -y  # Use dnf for Amazon Linux 2023

echo "Installing Python and Pip..."
sudo dnf install -y python3-pip

echo "Installing Ansible globally..."
# Installing without --user puts it in /usr/local/bin, which is already in PATH
sudo pip3 install ansible

echo "Verifying installation..."
ansible --version