# Day 2 - Users & Groups 

## Commands
- whoami : current user
- id : user info
- adduser <username> : create new user
- groupadd <groupname> : create new group
- usermod -aG <group> <user> : add user to group

## Why it matters
Correct user and group management ensures proper permissions and security in production systems.

## Processes
- ps aux : list processes
- top : interactive process monitor
- kill <PID> : stop a process
- nice -n 5 ./script.sh : run script with priority
- renice 10 -p <PID> : change priority of running process

## systenmd
- sudo systemctl start|stop|restart <service>
- sudo systemctl enable <service> : start on boot
- sudo systemctl status <service> : check status
