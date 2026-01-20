#!/bin/bash
echo "Hostname: $(hostname)"
ip a | grep inet
ss -tulpn
