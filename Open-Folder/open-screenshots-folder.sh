#!/bin/bash

# Set the path to your Pictures folder
FOLDER_PATH="/home/nahian/Pictures/Screenshots"

# Check if folder exists
if [ -d "$FOLDER_PATH" ]; then
    # Open the folder in the default file manager
    xdg-open "$FOLDER_PATH"
    echo "🖼️ Opened: $FOLDER_PATH"
else
    echo "❌ Pictures folder not found!"
fi
