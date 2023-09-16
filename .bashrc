# _____     _      __  __            _
# |_   _|__ | | ___|  \/  | __ _ _ __(_) __ _ _ __ ___
#   | |/ _ \| |/ _ \ |\/| |/ _` | '__| |/ _` | '_ ` _ \
#   | | (_) | |  __/ |  | | (_| | |  | | (_| | | | | | |
#   |_|\___/|_|\___|_|  |_|\__,_|_|  |_|\__,_|_| |_| |_|
#
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
	PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

gcom() {
	git add .
	git commit -m "$1"
}
lazyg() {
	git add .
	git commit -m "$1"
	git push
}
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/to/anaconda3/bin/conda' 'shell.bash' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
	eval "$__conda_setup"
else
	if [ -f "/home/to/anaconda3/etc/profile.d/conda.sh" ]; then
		. "/home/to/anaconda3/etc/profile.d/conda.sh"
	else
		export PATH="/home/to/anaconda3/bin:$PATH"
	fi
fi
unset __conda_setup
# <<< conda initialize <<<

alias z='zellij'

. "$HOME/.cargo/env"

#figlet ToleMariam

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export PATH="$HOME/.emacs.d/bin:$PATH"
