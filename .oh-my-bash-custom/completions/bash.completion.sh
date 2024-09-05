#! bash oh-my-bash.module
#
# bash-completion
# https://github.com/scop/bash-completion

if [[ $PS1 ]]; then
	# Use _omb_util_command_exists() for bash_completion's have() command
	have()
	{
		unset -v have
		_omb_util_command_exists "$1"
	}

	# Custom BASH_COMPLETION_DIR
	if [[ -f ${BASH_COMPLETION_DIR}/bash_completion ]]; then
		. ${BASH_COMPLETION_DIR}/bash_completion
	# Config directory
	elif [[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/bash_completion/bash_completion" ]]; then
		. ${XDG_CONFIG_HOME:-$HOME/.config}/bash_completion/bash_completion
	# /usr/share/bash-completion
	elif [[ -f /usr/share/bash-completion/bash_completion ]]; then
		. /usr/share/bash-completion/bash_completion
	# /sw/etc/bash_completion
	elif [[ -f /sw/etc/bash_completion/bash_completion ]]; then
		. /sw/etc/bash_completion/bash_completion
	fi

	# The have() command is no longer needed
	unset -v have
fi
