DOTFILES := $(shell pwd)

all: submodule asdf bin git gnome node php zsh
clean: clean-submodule clean-asdf clean-git clean-gnome clean-node clean-php clean-zsh clean-bin

submodule:
	@echo "\033[1mSubmodules\033[0m"
	@git submodule update --init --recursive
clean-submodule:
	@git submodule deinit -f .

${HOME}/.asdf:
	@ln -fs $(DOTFILES)/asdf ${HOME}/.asdf

asdf: ${HOME}/.asdf
	@echo "\033[1masdf\033[0m"
clean-asdf:
	@rm -f ${HOME}/.asdf

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

zsh: clean-zsh submodule
	@echo "\033[1mzsh\033[0m"
	@ln -fs $(DOTFILES)/zsh/oh-my-zsh ${HOME}/.oh-my-zsh
	@ln -fs $(DOTFILES)/zsh/zshrc ${HOME}/.zshrc
clean-zsh:
	@rm -rf ${HOME}/.oh-my-zsh
	@rm -f ${HOME}/.zshrc
