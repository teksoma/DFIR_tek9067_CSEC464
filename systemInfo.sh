#!/bin/bash

# Script to collect system infomation

echo "------------------------------"
echo "System infomation:"
echo "------------------------------"

echo "------------------------------"
echo "Current Time:"
echo "------------------------------"
date

echo "------------------------------"
echo "Time Zone:"
echo "------------------------------"
timedatectl status | grep 'Time zone'

echo "------------------------------"
echo "Uptime:"
echo "------------------------------"
uptime

echo "------------------------------"
echo "OS Kernel Version:"
echo "------------------------------"
uname -a

echo "------------------------------"
echo "Name:"
echo "------------------------------"
uname

echo "------------------------------"
echo 'OS version: '
echo "------------------------------"
uname -v

echo "------------------------------"
echo "CPU architecture:"
echo "------------------------------"
cat /proc/cpuinfo | grep 'model name	:'

echo "------------------------------"
echo "RAM:"
echo "------------------------------"
cat /proc/meminfo | grep 'Mem'

echo "------------------------------"
echo "Block devices and mounted filesystems:"
echo "------------------------------"
lsblk

echo "------------------------------"
echo "Hostname:"
echo "------------------------------"
hostname

echo "------------------------------"
echo "Domain name:"
echo "------------------------------"
domainname

echo "------------------------------"
echo "Users:"
echo "------------------------------"
cut -d: -f1 /etc/passwd

echo "------------------------------"
echo "Login info:"
echo "------------------------------"
last

echo "------------------------------"
echo "List of login info"
echo "------------------------------"
systemctl list-unit-files | grep enabled

echo "------------------------------"
echo "List of scheduled cronjobs:"
echo "------------------------------"
crontab -l

echo "------------------------------"
echo "List of network interfaces and settings:"
echo "------------------------------"
ifconfig

echo "------------------------------"
echo "DNS resolution:"
echo "------------------------------"
cat /etc/resolv.conf 

echo "------------------------------"
echo "Network enabled services:"
echo "------------------------------"
netstat -l

echo "------------------------------"
echo "Connections established:"
echo "------------------------------"
netstat -apn | grep ESTABLISH

echo "------------------------------"
echo "Printers:"
echo "------------------------------"
lpstat -p -d

echo "------------------------------"
echo "Packages installed:"
echo "------------------------------"
dpkg --get-selections

echo "------------------------------"
echo "Processes:"
echo "------------------------------"
ps -aux

echo "------------------------------"
echo "Drivers:"
echo "------------------------------"
lsmod

echo "------------------------------"
echo "Downloads and Documents:"
echo "------------------------------"
ls /~/*/Downloads 
ls /~/*/Documents

# 3 other artifacts

echo "------------------------------"
echo "Available disk space:"
echo "------------------------------"
df -h

echo "------------------------------"
echo "Mapped Hosts:"
echo "------------------------------"
cat /etc/hosts

echo "------------------------------"
echo "Free memory and swapspace:"
echo "------------------------------"
free -m


