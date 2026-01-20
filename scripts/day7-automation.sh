#!/bin/bash

# Usage: ./day7-automation.sh <directory_to_check>
DIR="$1"

if [ -z "$DIR" ]; then
  echo "Usage: $0 <directory_to_check>"
  exit 1
fi

LOG_FILE="logs/day7-automation.log"
mkdir -p logs

echo "==== Script Run: $(date) ====" >> "$LOG_FILE"
echo "Checking directory: $DIR" | tee -a "$LOG_FILE"

if [ -d "$DIR" ]; then
  echo "$DIR exists" | tee -a "$LOG_FILE"
  echo "Contents (first 5 files):" | tee -a "$LOG_FILE"
  ls "$DIR" | head -n 5 | tee -a "$LOG_FILE"
else
  echo "$DIR does NOT exist" | tee -a "$LOG_FILE"
fi
