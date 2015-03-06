DOTFILES := $(shell pwd)

all: submodule git node php zsh
clean: clean-git clean-node clean-php clean-zsh

submodule:
	@git submodule update --init --recursive

git: clean-git
	@echo -n "git "
	@ln -fs $(DOTFILES)/git/gitconfig ${HOME}/.gitconfig
	@ln -fs $(DOTFILES)/git/gitconfig.commit.template ${HOME}/.gitconfig.commit.template
	@ln -fs $(DOTFILES)/git/gitconfig.core.excludesfile ${HOME}/.gitconfig.core.excludesfile
	@echo "is now configured"
clean-git:
	@rm -f ${HOME}/.gitconfig
	@rm -f ${HOME}/.gitconfig.commit.template
	@rm -f ${HOME}/.gitconfig.core.excludesfile

node: clean-node
	@echo -n "node "
	@ln -fs $(DOTFILES)/node/nvm ${HOME}/.nvm
	@ln -fs $(DOTFILES)/node/nvmrc ${HOME}/.nvmrc
	@. ~/.nvm/nvm.sh && nvm install stable && nvm alias default stable
clean-node:
	@rm -rf ${HOME}/.nvm
	@rm -f ${HOME}/.nvmrc

php: clean-php
	@echo -n "php "
	@mkdir -p ${HOME}/.composer
	@ln -fs $(DOTFILES)/php/composer/composer.json ${HOME}/.composer/composer.json
	@echo "is now configured"
clean-php:
	@rm -f ${HOME}/.composer/composer.json

zsh: clean-zsh
	@echo -n "zsh "
	@ln -fs $(DOTFILES)/zsh/oh-my-zsh ${HOME}/.oh-my-zsh
	@ln -fs $(DOTFILES)/zsh/zshrc ${HOME}/.zshrc
	@echo "is now configured"
clean-zsh:
	@rm -rf ${HOME}/.oh-my-zsh
	@rm -f ${HOME}/.zshrc
