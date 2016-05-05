DOTFILES := $(shell pwd)

all: submodule bin git gnome node php zsh
clean: clean-submodule clean-git clean-gnome clean-node clean-php clean-zsh clean-bin

submodule:
	@echo "\033[1mSubmodules\033[0m"
	@git submodule update --init --recursive
clean-submodule:
	@git submodule deinit -f .

bin:
	@mkdir -p ${HOME}/.bin
clean-bin:
	@rmdir --ignore-fail-on-non-empty ${HOME}/.bin || true

git: clean-git
	@echo "\033[1mgit\033[0m"
	@ln -fs $(DOTFILES)/git/gitconfig ${HOME}/.gitconfig
	@ln -fs $(DOTFILES)/git/gitconfig.commit.template ${HOME}/.gitconfig.commit.template
	@ln -fs $(DOTFILES)/git/gitconfig.core.excludesfile ${HOME}/.gitconfig.core.excludesfile
clean-git:
	@rm -f ${HOME}/.gitconfig
	@rm -f ${HOME}/.gitconfig.commit.template
	@rm -f ${HOME}/.gitconfig.core.excludesfile

gnome: clean-gnome
	@echo "\033[1mGnome\033[0m"
	@ln -fs $(DOTFILES)/gnome/face ${HOME}/.face
clean-gnome:
	@rm -f ${HOME}/.face

node: clean-node submodule
	@echo "\033[1mNode.js\033[0m"
	@ln -fs $(DOTFILES)/node/nvm ${HOME}/.nvm
	@ln -fs $(DOTFILES)/node/nvmrc ${HOME}/.nvmrc
	-@. $(DOTFILES)/node/nvm/nvm.sh; nvm install
clean-node:
	@rm -rf ${HOME}/.nvm
	@rm -f ${HOME}/.nvmrc

php: clean-php bin
	@echo "\033[1mPHP\033[0m"
	@mkdir -p ${HOME}/.composer
	@ln -fs $(DOTFILES)/php/composer/composer.json ${HOME}/.composer/composer.json
	@which php && php -r "readfile('https://getcomposer.org/installer');" > /tmp/composer-setup.php && \
		php -r "if (hash('SHA384', file_get_contents('/tmp/composer-setup.php')) === '7228c001f88bee97506740ef0888240bd8a760b046ee16db8f4095c0d8d525f2367663f22a46b48d072c816e7fe19959') { echo 'Composer Installer verified. '; } else { echo 'Composer Installer corrupt. '; unlink('/tmp/composer-setup.php'); exit(1); }" && \
		php /tmp/composer-setup.php --install-dir=/tmp --filename=composer.phar --version=1.0.0 && \
		/tmp/composer.phar install --working-dir ~/.composer --no-interaction --prefer-dist --optimize-autoloader --no-dev && \
		rm -rf /tmp/composer-setup.php /tmp/composer.phar
clean-php:
	@rm -f ${HOME}/.composer/composer.json

zsh: clean-zsh submodule
	@echo "\033[1mzsh\033[0m"
	@ln -fs $(DOTFILES)/zsh/oh-my-zsh ${HOME}/.oh-my-zsh
	@ln -fs $(DOTFILES)/zsh/zshrc ${HOME}/.zshrc
clean-zsh:
	@rm -rf ${HOME}/.oh-my-zsh
	@rm -f ${HOME}/.zshrc
