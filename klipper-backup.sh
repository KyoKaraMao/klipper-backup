#!/bin/bash

BACKUP_DIR=~/klipper-backup
SOURCE_DIR=~/docker/klipper-mawi/printer_data

# Kopiere alle relevanten Dateien
rsync -av --delete "$SOURCE_DIR/config/" "$BACKUP_DIR/config/"

cd "$BACKUP_DIR" || exit 1

git add .
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
git commit -m "Automatisches Backup vom $TIMESTAMP"
git tag "backup-$TIMESTAMP"
