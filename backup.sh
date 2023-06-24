#!/bin/bash 
cd /srv/samba/laila_201911092
timestamp=$(date +%Y%m%d_%H%M%S)
git add .
git commit -m "automatic backup at time $timestamp"
git push origin master >> "/var/log/backup.log" 2>&1
if [ $? -eq 0 ]
then 
echo "backup successfull" >> "/var/log/backup.log"
else
echo "backup failed" >> "/var/log/backup.log"
fi 
#end 
