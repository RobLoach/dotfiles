DOTFILES := $(shell pwd)

all: submodule autoenv git gnome node php zsh
clean: clean-submodule clean-autoenv clean-git clean-gnome clean-node clean-php clean-zsh

submodule:
	@git submodule update --init --recursive
clean-submodule:
	@git submodule deinit -f .

autoenv: clean-autoenv submodule
	@echo -n "autoenv "
	@ln -fs $(DOTFILES)/shell/autoenv ${HOME}/.autoenv
	@echo "is configured"
clean-autoenv:
	@rm -f ${HOME}/.autoenv
	@rm -f ${HOME}/.autoenv_authorized*

git: clean-git
	@echo -n "git "
	@ln -fs $(DOTFILES)/git/gitconfig ${HOME}/.gitconfig
	@ln -fs $(DOTFILES)/git/gitconfig.commit.template ${HOME}/.gitconfig.commit.template
	@ln -fs $(DOTFILES)/git/gitconfig.core.excludesfile ${HOME}/.gitconfig.core.excludesfile
	@echo "configured"
clean-git:
	@rm -f ${HOME}/.gitconfig
	@rm -f ${HOME}/.gitconfig.commit.template
	@rm -f ${HOME}/.gitconfig.core.excludesfile

gnome: clean-gnome
	@echo -n "gnome "
	@ln -fs $(DOTFILES)/gnome/face ${HOME}/.face
	@echo "configured"
clean-gnome:
	@rm -f ${HOME}/.face

node: clean-node
	@echo -n "node "
	@ln -fs $(DOTFILES)/node/nvm ${HOME}/.nvm
	@ln -fs $(DOTFILES)/node/nvmrc ${HOME}/.nvmrc
	-@. ~/.nvm/nvm.sh; nvm install stable && nvm alias default stable
clean-node:
	@rm -rf ${HOME}/.nvm
	@rm -f ${HOME}/.nvmrc

php: clean-php
	@echo -n "php "
	@mkdir -p ${HOME}/.composer
	@ln -fs $(DOTFILES)/php/composer/composer.json ${HOME}/.composer/composer.json
	@echo "configured"
clean-php:
	@rm -f ${HOME}/.composer/composer.json

zsh: clean-zsh
	@echo -n "zsh "
	@ln -fs $(DOTFILES)/zsh/oh-my-zsh ${HOME}/.oh-my-zsh
	@ln -fs $(DOTFILES)/zsh/zshrc ${HOME}/.zshrc
	@echo "configured"
clean-zsh:
	@rm -rf ${HOME}/.oh-my-zsh
	@rm -f ${HOME}/.zshrc
