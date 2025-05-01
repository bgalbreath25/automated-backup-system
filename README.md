# Automated Backup System

### Author: Brayden Galbreath  
### Course: CS 2351 - Unix Programming  
### Project: Final - Week 14

---

## 📦 Description

This project is a shell script that automatically backs up a specified directory, compresses it into a timestamped `.tar.gz` archive, and stores it in a destination folder. The script can be run manually or scheduled with `cron`. Email notifications are sent to inform the user of success or failure.

---

## ⚙️ Features

- ✅ Compresses source directory with `tar`
- 🕒 Timestamped backup filenames
- 📥 Saves to a specified backup directory
- 📧 Sends email on success or failure
- 📅 Compatible with `cron` for scheduled automation
- 🪵 Logs results to a backup log file

---

## 🔧 Setup

### 1. Edit the Script

In `backup.sh`, customize these lines:

```bash
SOURCE_DIR="$HOME/Documents/to-backup"
DEST_DIR="$HOME/backups"
EMAIL="your.email@okstate.edu"
