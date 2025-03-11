backup_dir="/path/to/backup"
find "$backup_dir" -type f -mtime +7 -name "backup_*.tar.gz" -exec rm {} \;
echo "Old backups deleted successfully."
