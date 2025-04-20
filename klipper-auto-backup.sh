#!/bin/bash

# Navigate to the backup directory
cd "$(dirname "$0")"

# Add all changes
git add .

# Commit with current date
git commit -m "Auto-backup on 2025-04-20" || echo "Nothing to commit."

# Push to origin
git push origin main --tags

