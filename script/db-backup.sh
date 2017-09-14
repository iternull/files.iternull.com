#!/bin/sh
#
## db-backup "db_name" "user_name" "user_pass"
## crontab -e
## 0 0 * * * /usr/local/sbin/db-backup "db_name" "root" "password"

db_name=$1
user_name=$2
user_pass=$3

## Backup Database

if [ -e "/var/backups/" ];then
    if [ -e "/var/backups/$db_name\_db/" ];then
        mysqldump -u $user_name -p$user_pass $db_name | gzip > /var/backups/$db_name\_db/$db_name\_$(date --iso).sql.gz
    else
        mkdir -p /var/backups/$db_name\_db
        mysqldump -u $user_name -p$user_pass $db_name | gzip > /var/backups/$db_name\_db/$db_name\_$(date --iso).sql.gz
    fi
else
    mkdir -p /var/backups/$db_name\_db
    mysqldump -u $user_name -p$user_pass $db_name | gzip > /var/backups/$db_name\_db/$db_name\_$(date --iso).sql.gz
fi

## Clear old Backups

if [ $(date +%d) -eq "15" ];then
    if [ $(date +%m) -eq "01" ];then
        rm -rf /var/backups/$db_name\_db/$db_name\_$(date +%G)-12-*.sql.gz
    elif [ $(date +%m) -eq "10" ];then
        rm -rf /var/backups/$db_name\_db/$db_name\_$(date +%G)-09-*.sql.gz
    elif [ $(date +%m) -ge "11" ];then
        del_month=$[$(date +%m) - 1]
        rm -rf /var/backups/$db_name\_db/$db_name\_$(date +%G)-$del_month-*.sql.gz
    else
        del_month=0$[$(echo $(date +%m) | cut -c 2) - 1]
        rm -rf /var/backups/$db_name\_db/$db_name\_$(date +%G)-$del_month-*.sql.gz
    fi
fi
