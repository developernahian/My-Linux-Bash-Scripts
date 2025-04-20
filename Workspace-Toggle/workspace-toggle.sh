#!/bin/bash

# Read last workspace from a temp file or default to 1
STATE_FILE="/tmp/workspace-toggle-state"
if [ -f "$STATE_FILE" ]; then
  LAST_WS=$(cat "$STATE_FILE")
else
  LAST_WS=1
fi

# Toggle between workspace 1 and 2
if [ "$LAST_WS" -eq 1 ]; then
  wmctrl -s 1
  echo 2 > "$STATE_FILE"
else
  wmctrl -s 0
  echo 1 > "$STATE_FILE"
fi

