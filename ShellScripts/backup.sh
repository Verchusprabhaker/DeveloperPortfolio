#!/bin/bash
# Author: Verchus Prabhaker
# Description: Creates a compressed timestamped backup of a folder

# Check that an argument was provided
if [ -z "$1" ]; then
  echo "Usage: ./backup.sh <folder>"
  exit 1
fi

# Check that the folder exists
if [ ! -d "$1" ]; then
  echo "Error: folder '$1' does not exist."
  exit 1
fi

BACKUP_DIR=~/DeveloperPortfolio_Backups
mkdir -p "$BACKUP_DIR"

TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

if tar -czf "$BACKUP_FILE" -C "$(dirname "$1")" "$(basename "$1")"; then
  SIZE=$(du -h "$BACKUP_FILE" | cut -f1)
  echo "Backup successful: $(basename "$BACKUP_FILE") (Size: $SIZE)"
  echo "$TIMESTAMP - SUCCESS - $(basename "$BACKUP_FILE")" >> "$BACKUP_DIR/backup.log"
else
  echo "Backup failed."
  echo "$TIMESTAMP - FAILED - $1" >> "$BACKUP_DIR/backup.log"
  exit 1
fi
