DOTFILES := $(shell pwd)

all: submodule asdf git gnome fishconfig ssh
clean: clean-submodule clean-asdf clean-git clean-gnome clean-fishconfig clean-ssh

asdf/bin:
	@git submodule update --init --recursive

submodule: asdf/bin
	@echo "Submodules"
clean-submodule:
	@git submodule deinit -f .

# asdf
${HOME}/.asdf:
	@ln -fs $(DOTFILES)/asdf ${HOME}/.asdf
asdf: ${HOME}/.asdf asdf-plugins
	@echo "asdf"
clean-asdf:
	@rm -f ${HOME}/.asdf

asdf-plugins: ${HOME}/.asdf
	-@source ${HOME}/.asdf/asdf.fish
	-@. ${HOME}/.asdf/asdf.sh
	-@asdf plugin add nodejs
	-@asdf plugin add php
	-@asdf plugin add emsdk
	-@asdf plugin add python
	-@asdf plugin add golang

# ssh
${HOME}/.ssh:
	mkdir -p ${HOME}/.ssh
${HOME}/.ssh/config: ${HOME}/.ssh
	@ln -fs $(DOTFILES)/sshconfig/config ${HOME}/.ssh/config
ssh: ${HOME}/.ssh/config
	@echo "ssh"
clean-ssh:
	rm -f ${HOME}/.ssh/config

# git
git: clean-git
	@echo "git"
	@ln -fs $(DOTFILES)/git/gitconfig ${HOME}/.gitconfig
	@ln -fs $(DOTFILES)/git/gitconfig.commit.template ${HOME}/.gitconfig.commit.template
	@ln -fs $(DOTFILES)/git/gitconfig.core.excludesfile ${HOME}/.gitconfig.core.excludesfile
clean-git:
	@rm -f ${HOME}/.gitconfig
	@rm -f ${HOME}/.gitconfig.commit.template
	@rm -f ${HOME}/.gitconfig.core.excludesfile

gnome: clean-gnome
	@echo "Gnome"
	@ln -fs $(DOTFILES)/gnome/face ${HOME}/.face
clean-gnome:
	@rm -f ${HOME}/.face

# fish
${HOME}/.config:
	mkdir -p ${HOME}/.config
${HOME}/.config/fish: ${HOME}/.config
	@ln -fs $(DOTFILES)/fish ${HOME}/.config/fish
fishconfig: ${HOME}/.config/fish
	@echo "fish"
clean-fishconfig:
	@rm -f ${HOME}/.config/fish
