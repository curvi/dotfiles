dotfiles
========

My personal dotfiles and a script to make them work from a not hidden directory (automated).
Used on OSX with iterm2 tmux vim,..

install iterm
install homebrew, brew doctor, chown $(whoami) /..../
brew install git
install macvim
git clone https://github.com/niccnacc/dotfiles.git ~/Documents/dotfiles/
source ~/.bash_profile

install Vundle git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
brew install tmux

tmux clipboard ([exited] on startup)
http://robots.thoughtbot.com/how-to-copy-and-paste-with-tmux-on-mac-os-x
brew install reattach-to-user-namespace



Wrapper App for vim in terminal
use automator (new application, run applescript) with following code:

on run {input}
	-- "word 1 of myProcessInfo" is the unix id of the process
	-- "word 2 of myProcessInfo" is the unix id of the parent process
	-- "word 3 of myProcessInfo" is the name of the process
	try
		set myProcess to "Vim" -- your process name here
		set myProcessInfo to do shell script ("ps -xco pid,ppid,comm | grep " & myProcess)
		set isProcessRunning to 1
	on error
		set isProcessRunning to 0
	end try

	-- get the file path incl extention
	set inputFilePath to POSIX path of input

	if isProcessRunning = 1 then
		--display dialog "vim is already running"
		set openInVim to ";e " & inputFilePath as string

		tell application "iTerm"
			activate
			tell current terminal
				tell the last session
					-- split vim window!
					write text ";vsplit"
					tell i term application "System Events" to keystroke return
					write text openInVim
				end tell
			end tell
		end tell
	else
		--display dialog "new iterm and vim"
		set openVim to "vim " & quoted form of inputFilePath
		set text item delimiters to "/"
		set parentDir to text items 1 thru -2 of inputFilePath

		tell application "iTerm"
			activate
			tell current terminal
				tell the last session
					delay 0.1
					write text "cd " & parentDir & "; clear"
					write text openVim
				end tell
			end tell
		end tell
	end if
end run

