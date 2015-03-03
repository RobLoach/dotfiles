DOTFILES := $(shell pwd)

all: submodule git node php zsh

submodule:
	@git submodule update --init --recursive

git: clean-git
	@ln -fs $(DOTFILES)/git/gitconfig ${HOME}/.gitconfig
	@ln -fs $(DOTFILES)/git/gitconfig.commit.template ${HOME}/.gitconfig.commit.template
	@ln -fs $(DOTFILES)/git/gitconfig.core.excludesfile ${HOME}/.gitconfig.core.excludesfile
clean-git:
	@rm -f ${HOME}/.gitconfig
	@rm -f ${HOME}/.gitconfig.commit.template
	@rm -f ${HOME}/.gitconfig.core.excludesfile

node: clean-node
	@ln -fs $(DOTFILES)/node/nvm ${HOME}/.nvm
	@ln -fs $(DOTFILES)/node/nvmrc ${HOME}/.nvmrc
clean-node:
	@rm -rf ${HOME}/.nvm
	@rm -f ${HOME}/.nvmrc

php: clean-php
	@mkdir -p ${HOME}/.composer
	@ln -fs $(DOTFILES)/php composer/composer.json ${HOME}/.composer/composer.json
clean-php:
	@rm -f ${HOME}/.composer/composer.json

zsh: clean-zsh
	@ln -fs $(DOTFILES)/zsh/oh-my-zsh ${HOME}/.oh-my-zsh
	@ln -fs $(DOTFILES)/zsh/zshrc ${HOME}/.zshrc
clean-zsh:
	@rm -rf ${HOME}/.oh-my-zsh
	@rm -f ${HOME}/.zshrc

clean: clean-git clean-node clean-php clean-zsh
