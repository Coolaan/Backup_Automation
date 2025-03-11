## Backup Automation System - The Backup Automation System is designed to simplify and automate the process of backing up important files. 

# It ensures your data is protected through the following key features:
-->Automated file compression for efficient storage.
-->Scheduled backup creation at specified intervals.
-->Automatic cleanup of older backups to manage storage space.
-->Detailed log files for tracking backup success and errors.
-->This system is ideal for personal use or small-scale business data management.

# Installation Instructions:
Step 1: Install required tools before proceeding.
sudo apt update
sudo apt install cron rsync tar

Step 2: Run the following commands to clone the repository and navigate into the folder.
git clone <your-repo-link>
cd Backup_Automation

Step 3: Ensure the scripts have the necessary permissions to run.
chmod +x backup_creator.sh schedule_backup.sh cleanup_backups.sh

Step 4: To schedule automatic backups at 2 AM every day.
crontab -e
0 2 * * * /path/to/backup_creator.sh (Add the following line at the end of the file)

Step 5: To check the success or failure of backups.
cat /var/log/backup.log

# Usage:
To manually create a backup, run:
./backup_creator.sh

To schedule backups at 2 AM daily, run:
./schedule_backup.sh

To remove backups older than 7 days, run:
./cleanup_backups.sh

# Important Notes:
Replace /path/to/source and /path/to/backup in the scripts with your actual directories.
Logs are stored at /var/log/backup.log for tracking backup details.

# What it does:
--> backup_creator.sh
Creates a backup of a specified folder.
Saves the backup in a designated location with a timestamp.
It will prompt you to specify the folder to back up (eg: Documents, Pictures, etc.).
A .tar.gz file (compressed backup) will be created in your chosen backup location.
Example output file: backup_2025-03-11_14-30.tar.gz

--> schedule_backup.sh
Uses cron to schedule your backup at regular intervals (e.g., daily at 2 AM).
It will configure a scheduled task for automatic backups.
Example cron entry it might create: 0 2 * * * /path/to/backup_creator.sh

--> cleanup_backups.sh
Deletes backup files older than a set number of days (e.g., 7 days).
It will automatically search for old .tar.gz backup files in your designated folder and delete those older than the set limit.
For example, if today is March 11, backups older than March 4 will be deleted.
