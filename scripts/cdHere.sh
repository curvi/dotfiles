#!/bin/bash
#
# This script opens a gnome-terminal in the directory you select.
# Distributed under the terms of GNU GPL version 2 or later
#
# Install in ~/.gnome2/nautilus-scripts or ~/Nautilus/scripts
# You need to be running Nautilus 1.0.3+ to use scripts.

# When a directory is selected, go there. Otherwise go to current
# directory. If more than one directory is selected, show error.
if [ -n "$NAUTILUS_SCRIPT_SELECTED_FILE_PATHS" ]; then
  set $NAUTILUS_SCRIPT_SELECTED_FILE_PATHS
  if [ $# -eq 1 ]; then
    destination="$1"
    if [ ! -d "$destination" ]; then
      # Go to file's directory if it's a file
      destination="`dirname "$destination"`"
      echo "HALLO"
      /bin/echo "got r00t?"
    fi
  else
    zenity --error --title="Error - Open terminal here" \
      --text="You can only select one directory."
    exit 1
  fi
else
  destination="`echo "$NAUTILUS_SCRIPT_CURRENT_URI" | sed 's/^file:\/\///'`"
fi

# It's only possible to go to local directories
if [ -n "`echo "$destination" | grep '^[a-zA-Z0-9]\+:'`" ]; then
  zenity --error --title="Error - Open terminal here" \
    --text="Only local directories can be used."
  exit 1
fi
# zenity --info --text="$destination"

gnome-terminal --working-directory $destination
