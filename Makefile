DOTFILES := $(shell pwd)

all: submodule bash git gnome ssh vim nano restart
clean: clean-submodule clean-git clean-gnome clean-ssh clean-bash clean-vim clean-nano clean-asdf

restart:
	exec bash

vendor/asdf/bin/asdf:
	@git submodule update --init --recursive

submodule: vendor/asdf/bin/asdf

clean-submodule:
	@git submodule deinit -f .

update:
	@echo "Updating Dependencies"
	@git submodule update --init --remote --recursive
	@git status

asdf: bash submodule
	-@asdf plugin add nodejs
	-@asdf plugin add php
	-@asdf plugin add emsdk
	-@asdf plugin add python
	-@asdf plugin add golang

clean-asdf:
	@rm -rf ${HOME}/.tool-versions

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
clean-git:
	@rm -f ${HOME}/.gitconfig

gnome: clean-gnome
	@echo "Gnome"
	@ln -fs $(DOTFILES)/gnome/face ${HOME}/.face
clean-gnome:
	@rm -f ${HOME}/.face

# bash
bash: clean-bash
	@echo "bash"
	@ln -fs $(DOTFILES)/bash/.bashrc ${HOME}/.bashrc
clean-bash:
	@rm -f ${HOME}/.bashrc

vim: clean-vim submodule
	@echo "vim"
	@echo "set runtimepath+=~/.dotfiles/vendor/vimrc" >> ${HOME}/.vimrc
	@echo "source ~/.dotfiles/vendor/vimrc/vimrcs/basic.vim" >> ${HOME}/.vimrc
	@echo "source ~/.dotfiles/vendor/vimrc/vimrcs/filetypes.vim" >> ${HOME}/.vimrc
	@echo "source ~/.dotfiles/vendor/vimrc/vimrcs/plugins_config.vim" >> ${HOME}/.vimrc
	@echo "source ~/.dotfiles/vendor/vimrc/vimrcs/extended.vim" >> ${HOME}/.vimrc

clean-vim:
	@rm -f ${HOME}/.vimrc

nano: clean-nano submodule
	@echo "nano"
	@ln -s $(DOTFILES)/vendor/nano-syntax-highlighting/nanorc ${HOME}/.nanorc
	@ln -s $(DOTFILES)/vendor/nano-syntax-highlighting/ ${HOME}/.nano

clean-nano:
	@rm -f ${HOME}/.nano
	@rm -f ${HOME}/.nanorc
