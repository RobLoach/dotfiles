# Login shells read this file instead of ~/.profile, so hand off to it.
if [[ -f ~/.profile ]]; then
	. ~/.profile
fi

# Load ~/.bashrc too, unless ~/.profile already does (as on Debian/Ubuntu)
if [[ -f ~/.bashrc ]] && ! grep -qs '\.bashrc' ~/.profile; then
	. ~/.bashrc
fi
