DOTFILES := $(shell pwd)

all: submodule asdf git gnome ssh bash vim nano
clean: clean-submodule clean-asdf clean-git clean-gnome clean-ssh clean-bash clean-vim clean-nano

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
	-@. ~/.asdf/asdf.sh
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

# bash
bash:
	@echo "bash"
	-@mv -f ${HOME}/.bashrc ${HOME}.bashrc.backup
	@ln -fs $(DOTFILES)/bash/.bashrc ${HOME}/.bashrc
clean-bash:
	@rm ${HOME}/.bashrc
	-@mv -f ${HOME}/.bashrc.backup ${HOME}/.bashrc

vim:
	@echo "vim"
	@rm -f ${HOME}/.vimrc
	@echo "set runtimepath+=~/.dotfiles/vendor/vimrc" >> ${HOME}/.vimrc
	@echo "source ~/.dotfiles/vendor/vimrc/vimrcs/basic.vim" >> ${HOME}/.vimrc
	@echo "source ~/.dotfiles/vendor/vimrc/vimrcs/filetypes.vim" >> ${HOME}/.vimrc
	@echo "source ~/.dotfiles/vendor/vimrc/vimrcs/plugins_config.vim" >> ${HOME}/.vimrc
	@echo "source ~/.dotfiles/vendor/vimrc/vimrcs/extended.vim" >> ${HOME}/.vimrc

clean-vim:
	@rm -f ${HOME}/.vimrc

nano: clean-nano
	@echo "nano"
	@ln -s $(DOTFILES)/vendor/nanorc/nanorc ${HOME}/.nanorc
	@ln -s $(DOTFILES)/vendor/nanorc/ ${HOME}/.nano

clean-nano:
	@rm -f ${HOME}/.nano
	@rm -f ${HOME}/.nanorc
