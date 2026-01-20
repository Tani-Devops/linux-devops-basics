#!/bin/bash
echo "Starting DevOps Bash Scripts"
echo "Current user: $USER"
echo "Current directory: $(pwd)"
echo "Current date: $(date)"

SERVER_NAME="devops-server"

echo "Server name is devops-server"

if [ -d "/var/log" ]; then
  echo "var/log directory exists"
else
  echo "/var/log/ directory does not exists"
fi

for dir in /etc /var /tmp; do
  echo "Checking directory: $dir"
  ls "$dir" | head -n 3
done
