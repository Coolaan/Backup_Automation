(crontab -l ; echo "0 2 * * * /path/to/backup_creator.sh") | crontab -
echo "Backup schedule set for 2 AM daily."
