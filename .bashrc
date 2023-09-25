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
#vterm
vterm_printf() {
	if [ -n "$TMUX" ] && ([ "${TERM%%-*}" = "tmux" ] || [ "${TERM%%-*}" = "screen" ]); then
		# Tell tmux to pass the escape sequences through
		printf "\ePtmux;\e\e]%s\007\e\\" "$1"
	elif [ "${TERM%%-*}" = "screen" ]; then
		# GNU screen (screen, screen-256color, screen-256color-bce)
		printf "\eP\e]%s\007\e\\" "$1"
	else
		printf "\e]%s\e\\" "$1"
	fi
}
if [[ "$INSIDE_EMACS" = 'vterm' ]]; then
	function clear() {
		vterm_printf "51;Evterm-clear-scrollback"
		tput clear
	}
fi

PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND; }"'echo -ne "\033]0;${HOSTNAME}:${PWD}\007"'

vterm_prompt_end() {
	vterm_printf "51;A$(whoami)@$(hostname):$(pwd)"
}
PS1=$PS1'\[$(vterm_prompt_end)\]'

vterm_cmd() {
	local vterm_elisp
	vterm_elisp=""
	while [ $# -gt 0 ]; do
		vterm_elisp="$vterm_elisp""$(printf '"%s" ' "$(printf "%s" "$1" | sed -e 's|\\|\\\\|g' -e 's|"|\\"|g')")"
		shift
	done
	vterm_printf "51;E$vterm_elisp"
}
find_file() {
	vterm_cmd find-file "$(realpath "${@:-.}")"
}

say() {
	vterm_cmd message "%s" "$*"
}

open_file_below() {
	vterm_cmd find-file-below "$(realpath "${@:-.}")"
}

if [[ "$INSIDE_EMACS" = 'vterm' ]] &&
	[[ -n ${EMACS_VTERM_PATH} ]] &&
	[[ -f ${EMACS_VTERM_PATH}/etc/emacs-vterm-bash.sh ]]; then
	source ${EMACS_VTERM_PATH}/etc/emacs-vterm-bash.sh
fi
