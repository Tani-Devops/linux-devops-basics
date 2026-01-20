# 🖥 Linux DevOps Basics – Tani Khwezi

[![GitHub](https://img.shields.io/badge/GitHub-Portfolio-black?logo=github)](https://github.com/Tani-Devops/linux-devops-basics)
[![Linux](https://img.shields.io/badge/Linux-Basics-orange?logo=linux)]()
[![Bash](https://img.shields.io/badge/Bash-Scripting-blue?logo=gnu-bash)]()

A complete **Linux DevOps learning portfolio** covering **Days 1–7**.  
Includes **commands, scripts, and automation exercises** for Linux administration, Bash scripting, networking, and troubleshooting.

---

## 📂 Repo Structure

---

<details>
<summary>📁 Day 1 – Filesystem & Navigation</summary>

```bash
pwd # Show current directory
ls -la # List all files
cd <dir> # Change directory
mkdir <dir> # Create directory
touch <file> # Create file
cp <src> <dst> # Copy
mv <src> <dst> # Move/Rename
rm <file> # Delete file
cat <file> # View file
less <file> # Scrollable view
head/tail <file># First/last lines

## Day 2 - Users, Groups & Permissions

useradd <user>
passwd <user>
groupadd <group>
usermod -aG <group> <user>
chown user:group <file>
chmod 755 <file>
ls -l

## Day 3 - Processes & Git 

ps aux
top
kill <PID>
kill -9 <PID>
systemctl status ssh
systemctl restart ssh

## Day 4 - Networking & SSH 

ip a
ping <host>
ss -tulpn
ssh user@host

## Day 5 - Package Movement & Logs 

sudo apt update
sudo apt upgrade -y
sudo apt install <pkg>
sudo apt remove <pkg>

sudo less /var/log/syslog
sudo less /var/log/auth.log
sudo grep ssh /var/log/auth.log

df -h
free -m
du -sh *

## Day 6 - Bash Scripting Basics

#!/bin/bash
echo "Current user: $USER"
echo "Current directory: $(pwd)"
NAME="Tani"
echo "Hello $NAME"

if [ -d "/var/log" ]; then
  echo "Exists"
else
  echo "Does not exist"
fi

for dir in /etc /var /tmp; do
  echo $dir
done
 
## Day 7 - Advanced Bash & Automation 

# Arguments
./script.sh /etc # $1 = /etc

# Logging
mkdir -p logs
echo "message" >> logs/logfile.log

# Conditional automation
if [ -d "$1" ]; then
  echo "$1 exists" | tee -a logs/logfile.log
else
  echo "$1 does NOT exist" | tee -a logs/logfile.log
fi

# Loop over directories
for dir in /etc /var /tmp; do
  echo "Checking $dir" | tee -a logs/logfile.log
  ls "$dir" | head -n 5 | tee -a logs/logfile.log
done


