#! bash oh-my-bash.module

# git
alias gti='git'
alias gt='git'
alias gi='git'
alias giut='git'
alias guit='git'
alias gitp='git'

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

# Flatpaks
alias flatpak-builder="flatpak run org.flatpak.Builder"

# Node.js
alias nodejs='node'
