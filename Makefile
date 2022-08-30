DOTFILES := $(shell pwd)

all: submodule asdf git gnome fish
clean: clean-submodule clean-asdf clean-git clean-gnome clean-fish

submodule:
	@echo "\033[1mSubmodules\033[0m"
	@git submodule update --init --recursive
clean-submodule:
	@git submodule deinit -f .

# asdf
${HOME}/.asdf:
	@ln -fs $(DOTFILES)/asdf ${HOME}/.asdf
asdf: ${HOME}/.asdf
	@echo "\033[1masdf\033[0m"
clean-asdf:
	@rm -f ${HOME}/.asdf

# git
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

# fish
${HOME}/.config:
	mkdir ${HOME}/.config

${HOME}/.config/fish: ${HOME}/.config
	@ln -fs $(DOTFILES)/fish ${HOME}/.config/fish
fish: ${HOME}/.config/fish
	@echo "\033[1mfish\033[0m"
clean-fish:
	@rm -f ${HOME}/.config/fish