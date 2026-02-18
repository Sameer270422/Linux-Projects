# Project 2: Log Backup & Cleanup Automation

## Objective
Automate application log backup and cleanup to prevent disk space issues on a Linux server.

## Scenario
Applications generate log files continuously. Without automation, logs can grow large and cause system failures. This project demonstrates how to securely back up logs, compress them, and remove old log files using shell scripting and cron jobs.

## Project Location
- Script location: `/home/vagrant/linux-projects/log-backup`
- Log directory: `/var/log/myapp`
- Backup directory: `/opt/app/log-backup`

## What This Project Does
- Creates a compressed backup (`.tar.gz`) of application logs
- Stores backups in a secure directory
- Deletes log files older than 7 days
- Automates the process using cron

## Technologies Used
- Linux (CentOS / Ubuntu)
- Bash scripting
- tar & gzip
- find command
- cron scheduler
- Linux permissions & ownership

## Security Considerations
- Backup directory owned by `appuser:devops`
- Permissions set to `750` to restrict unauthorized access
- Script executed with elevated privileges using `sudo`

## Automation
A cron job runs the backup script daily at 2 AM:
0 2 * * * /home/vagrant/linux-projects/log-backup/backup


## Outcome
- Logs are safely backed up daily
- Old logs are cleaned automatically
- Disk usage is controlled
- System follows least-privilege security model

