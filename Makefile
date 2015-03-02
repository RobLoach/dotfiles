DOTFILES := $(shell pwd)

all: submodule php zsh node

submodule:
	@git submodule update --init --recursive

php: clean-php
	@mkdir -p ${HOME}/.composer
	@ln -fs $(DOTFILES)/composer/composer.json ${HOME}/.composer/composer.json
clean-php:
	@rm -f ${HOME}/.composer/composer.json

zsh: clean-zsh
	@ln -fs $(DOTFILES)/zsh/oh-my-zsh ${HOME}/.oh-my-zsh
	@ln -fs $(DOTFILES)/zsh/zshrc ${HOME}/.zshrc
clean-zsh:
	@rm -rf ${HOME}/.oh-my-zsh
	@rm -f ${HOME}/.zshrc

node: clean-node
	@ln -fs $(DOTFILES)/node/nvm ${HOME}/.nvm
	@ln -fs $(DOTFILES)/node/nvmrc ${HOME}/.nvmrc
clean-node:
	@rm -rf ${HOME}/.nvm
	@rm -f ${HOME}/.nvmrc

clean: clean-php clean-zsh clean-node
