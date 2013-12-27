###
# Dotfiles
###
default:
	@echo "Updating Dotfiles..."
	@git pull

uninstall:
	@echo "Uninstalling Dotfiles..."
	@rm -rf ~/.bash_it ~/.git Makefile README.md

install:
	@echo "Installing Bash-It..."
	@rm -rf ~/.bash_it
	@git clone https://github.com/revans/bash-it.git ~/.bash_it
	@~/.bash_it/install.sh
	@git reset --hard HEAD
	@source ~/.bash_profile

.PHONY: default
