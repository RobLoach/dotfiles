if test -f "$HOME/.asdf/asdf.sh"; then
  . "$HOME/.asdf/asdf.sh"
fi

if test -f "$HOME/.asdf/completions/asdf.bash"; then
  . "$HOME/.asdf/completions/asdf.bash"
fi

export AG_NO_CONTEXT=false
