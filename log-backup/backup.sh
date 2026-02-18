#!/bin/bash
# This tells the system to use the Bash shell to run this script

LOG_DIR="/var/log/myapp"
# Directory where application log files are stored

BACKUP_DIR="/opt/app/log-backup"
# Directory where compressed backups will be saved

DATE=$(date +%F)
# Stores current date in YYYY-MM-DD format

mkdir -p $BACKUP_DIR
# Creates the backup directory if it does not already exist

tar -czf $BACKUP_DIR/myapp-logs-$DATE.tar.gz $LOG_DIR
# Creates a compressed (tar.gz) backup of log directory
# -c : create archive
# -z : gzip compression
# -f : specify file name

find $LOG_DIR -type f -mtime +7 -delete
# Finds files older than 7 days in LOG_DIR and deletes them
# -type f : only files
# -mtime +7 : older than 7 days
# -delete : removes the files

