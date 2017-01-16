#!/bin/bash
#
# This script opens a gnome-terminal in the directory you select.
# Distributed under the terms of GNU GPL version 2 or later
#
# Install in ~/.gnome2/nautilus-scripts or ~/Nautilus/scripts
# You need to be running Nautilus 1.0.3+ to use scripts.

# When a directory is selected, go there. Otherwise go to current
# directory. If more than one directory is selected, show error.

# function to open the given file in a split
function split_open () {
tmux send-keys -t nvim Escape # goto normal mode
tmux send-keys -t nvim ",w" Enter # split pane vertically
  tmux send-keys -t nvim Escape # goto normal mode
  tmux send-keys -t nvim ";e $1" Enter # load new file
}

# rename the ridiculous selection variable
selection=(${NAUTILUS_SCRIPT_SELECTED_FILE_PATHS[*]})

#zenity --info --text="${selection[*]}" # DEBUG

# When a directory is selected, go there. Otherwise go to current
# directory. If more than one directory is selected, show error.
if [ -d "${selection[0]}" ]; then
zenity --info --text="Directory selected!"
exit 1
fi

if ! tmux has-session -t nvim ; then
  # start up a fresh nvim session!
  tmux new-session -d -s nvim
  tmux send-keys -t nvim "nvim -O ${selection[*]}" Enter
  tmux send-keys -t nvim Escape ; # change to normal mode
  # after the tmux session is prepared - attach to it in gnome-terminal!
  gnome-terminal -e "tmux attach-session -d -t nvim"
else
  # open all remaining files in nvim splits (using my shortcuts)
  for selected_file in ${selection[*]} ; do
    split_open ${selected_file}
  done;
fi

