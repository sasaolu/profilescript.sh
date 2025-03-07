#!/bin/bash
echo "Script started"

# Function to check if a package is installed
is_installed() {
  dpkg -l | grep -q "$1"
}
# Install nginx if not installed
if ! is_installed nginx; then
  echo "Installing Nginx..."
  sudo apt update
  sudo apt install nginx -y
else
  echo "Nginx is already installed."
fi  
  
