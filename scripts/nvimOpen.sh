#! /bin/bash/

if [ -z "$(pgrep tmux)" ]
  then
	tmux echo "hello"
     # foo is not running
  else
	tmux echo "No"
     # foo is running
fi











#gnome-terminal --working-directory=/path/to/dir
#NAUTILUS_SCRIPT_SELECTED_FILE_PATHS
#newline-delimited paths for selected files (only if local)
