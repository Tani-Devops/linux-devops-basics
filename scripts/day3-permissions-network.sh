#!/bin/bash

echo "=== File Permission ==="
ls -l notes/

echo "=== Network Interfaces ==="
ip a

echo "=== Ping Google ==="
ping -c 3 google.com
