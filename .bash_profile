# Login shells read this file instead of ~/.profile, so hand off to it.
# On Debian/Ubuntu, ~/.profile sources ~/.bashrc.
if [[ -f ~/.profile ]]; then
	. ~/.profile
elif [[ -f ~/.bashrc ]]; then
	. ~/.bashrc
fi
