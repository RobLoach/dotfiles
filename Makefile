default:
	@echo "Retrieving latest dot file updates..."
	@git reset --hard HEAD
	@git pull

uninstall:
	@rm -rf ~/.bash_it ~/.git Makefile README.md

install: default
	@echo "Installing Bash-It..."
	@rm -rf ~/.bash_it
	@git clone https://github.com/revans/bash-it.git ~/.bash_it
	@~/.bash_it/install.sh
	@git reset --hard HEAD

.PHONY: default
