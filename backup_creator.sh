date=$(date +"%Y-%m-%d_%H-%M-%S")
backup_dir="/path/to/backup"
src_dir="/path/to/source"
log_file="/var/log/backup.log"

mkdir -p "$backup_dir"
tar -czf "$backup_dir/backup_$date.tar.gz" "$src_dir"
echo "$date - Backup created successfully." >> "$log_file"
