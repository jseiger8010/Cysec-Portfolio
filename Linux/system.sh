#!/bin/bash



sdt=$(date | awk '{print $1 $2 $3 $6}')
echo ''

echo '---------------------------------------------'
echo ''
# Free memory output to a free_mem.txt fill
echo '--Free Memory: Saved to ~/backups/freemem/free_mem.txt--'
echo ''
date >> ~/backups/freemem/free_mem.txt && free  >> ~/backups/freemem/free_mem.txt && head -4 ~/backups/freemem/free_mem.txt
echo ''
# Disk usage output to a disk_usage.txt file
echo '--Disk Usage: Saved to ~/backups/diskuse/disk_usage--'
date >> ~/backups/diskuse/disk_usage.txt
echo ''
top -bn 1 | grep Cpu >> ~/backups/diskuse/disk_usage.txt  

tail -2 ~/backups/diskuse/disk_usage.txt
echo ''

# List open files to a open_list.txt file
date >> ~/backups/openlist/openlist$sdt.txt
echo "--All Open files: Saved to ~/backups/openlist/openlist$sdt.txt--"
date
lsof >> ~/backups/openlist/openlist$sdt.txt
echo ''
# Free disk space to a free_disk.txt file

date >> ~/backups/freedisk/free_disk.txt
echo --Free Disk Space: Saved to ~/backups/freedisk/free_disk.odt
echo ''
df -h >> ~/backups/freedisk/free_disk.txt && head -3 ~/backups/freedisk/free_disk.txt
echo ''
echo '---------------------------------------------'
echo ''
