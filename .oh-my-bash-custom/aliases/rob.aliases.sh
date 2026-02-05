#! bash oh-my-bash.module

# git
alias gti='git'
alias gt='git'
alias gi='git'
alias giut='git'
alias guit='git'
alias gitp='git'
alias giot='git'

# Text editor
alias pluma='xed'
alias nanoa='nano'
alias 'code.'='code .'
if command -v vim &> /dev/null; then
    alias vi='vim'
fi

# make
alias maek='make'

# mkdir
alias mdkir='mkdir'

# composer
alias comopser='composer'
alias copmoser='composer'
alias compsoer='composer'
alias copmposer='composer'
alias compser='composer'
alias composre='composer'
alias xomposer='composer'
alias cimposer='composer'
alias clmposer='composer'
alias cpmposer='composer'

# dotfiles
alias dotfiles='make -C ${DOTFILES}'

# VSCode
alias cdode='code'

# Flatpak
alias flatpak-builder="flatpak run org.flatpak.Builder"
alias joplin="flatpak run net.cozic.joplin_desktop"

# Node.js
alias nodejs='node'

# DDEV
alias duli='ddev launch $(ddev drush uli)'
