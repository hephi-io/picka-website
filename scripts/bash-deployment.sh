#!/bin/bash

# Define variables
REMOTE_USER="ikenna"
REMOTE_HOST="144.126.202.220"
SOURCE_DIR="/Users/ikennaezeani/Documents/zipkod/zipkod-nuxt/dist/"
TEMP_DIR="/home/$REMOTE_USER/temp_upload"  # Temporary directory on the remote server
DEST_DIR="/var/www/zipkod.ng"  # Final destination directory
SSH_KEY="$HOME/.ssh/id_ed25519"  # Expanding the home directory explicitly

# Check if the source directory contains files
if [ -z "$(ls -A "$SOURCE_DIR")" ]; then
    echo "Source directory is empty or does not exist."
    exit 1
fi

# Check if the SSH key exists
if [ ! -f "$SSH_KEY" ]; then
    echo "SSH key not found."
    exit 1
fi

# Create a temporary directory on the remote server
ssh -i "$SSH_KEY" "$REMOTE_USER@$REMOTE_HOST" "mkdir -p $TEMP_DIR"

# Run SCP command with compression and logging to the temporary directory
scp -r -C -i "$SSH_KEY" "$SOURCE_DIR"* "$REMOTE_USER@$REMOTE_HOST:$TEMP_DIR"

# remove files and folders in DEST_DIR
# Move files to the final destination using sudo
# Remove TEMP_DIR
ssh -t -i "$SSH_KEY" "$REMOTE_USER@$REMOTE_HOST" "sudo rm -rf $DEST_DIR/{*,.*} && sudo mv $TEMP_DIR/* $DEST_DIR && sudo rm -rf $TEMP_DIR"

# Check if the SCP command was successful
if [ $? -eq 0 ]; then
    echo "Files copied successfully."
else
    echo "Failed to copy files."
fi