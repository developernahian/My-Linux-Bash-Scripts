#!/bin/bash

# Minimize All Windows - Optimized Script
# Simply run this script to minimize all windows

minimize_all_windows() {
    # Try multiple methods for maximum compatibility
    xdotool key super+d 2>/dev/null    # Ubuntu default shortcut
    sleep 0.3
    
    # Minimize windows individually (skip errors)
    xdotool search --onlyvisible --name "" 2>/dev/null | while read -r window; do
        xdotool windowminimize "$window" 2>/dev/null
    done
    
    # Final fallback
    wmctrl -k on 2>/dev/null
}

# Main execution
if ! command -v xdotool &>/dev/null || ! command -v wmctrl &>/dev/null; then
    echo "Error: Required tools (xdotool, wmctrl) not found." >&2
    exit 1
fi

minimize_all_windows
echo "All windows minimized"
