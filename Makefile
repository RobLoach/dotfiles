DOTFILES := $(shell pwd)

all: submodule php

submodule:
	@git submodule update --init --recursive

php: clean-php
	@mkdir -p ${HOME}/.composer
	@ln -fs $(DOTFILES)/composer/composer.json ${HOME}/.composer/composer.json

clean-php:
	@rm -f ${HOME}/.composer/composer.json

clean: clean-php
