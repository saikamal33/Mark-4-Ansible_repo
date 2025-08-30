#! /bin/bash

logbackup="/var/log/backup_{{ env_name }}.log"

tar -czvf /tmp/sysauth_backup_log_$(date +%F).tar.gz /var/log/auth.log >> $logbackup

echo "backup completed on $(date)"
