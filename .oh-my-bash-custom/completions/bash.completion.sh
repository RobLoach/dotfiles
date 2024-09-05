#! bash oh-my-bash.module
#
# bash-completion
# https://github.com/scop/bash-completion

if [[ $PS1 ]]; then
	# Ensure the `have` command is available
	have()
	{
		unset -v have
		_comp_have_command "$1" && have=yes
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
fi
