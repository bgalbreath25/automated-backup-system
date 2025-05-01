#!/bin/bash

# === CONFIGURATION ===
SOURCE_DIR="$HOME/Documents/to-backup"           # Directory to back up
DEST_DIR="$HOME/backups"                         # Directory to save the backup
EMAIL="your.email@okstate.edu"                   # Email for notification

# === SCRIPT START ===
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
FILENAME="backup_$TIMESTAMP.tar.gz"
LOGFILE="$DEST_DIR/backup_log.txt"

mkdir -p "$DEST_DIR"

# Perform backup
tar -czf "$DEST_DIR/$FILENAME" "$SOURCE_DIR" 2>> "$LOGFILE"
EXIT_CODE=$?

# Send notification
if [ $EXIT_CODE -eq 0 ]; then
    echo "Backup successful: $FILENAME" | mail -s "✅ Backup Successful" "$EMAIL"
    echo "$(date): Backup succeeded — $FILENAME" >> "$LOGFILE"
else
    echo "Backup failed for $SOURCE_DIR" | mail -s "❌ Backup Failed" "$EMAIL"
    echo "$(date): Backup FAILED" >> "$LOGFILE"
fi
