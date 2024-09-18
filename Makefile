DOTFILES := $(shell pwd)

# Install all the dotfiles
install: submodules bash git gnome ssh vim nano inputrc

# Remove any of the dotfiles from the system
clean: submodules-clean git-clean gnome-clean ssh-clean bash-clean vim-clean nano-clean asdf-clean inputrc-clean

# Test to make sure the dotfiles were set up correctly
test: submodules-test asdf-test ssh-test git-test gnome-test bash-test vim-test nano-test inputrc-test

# Display the current status of the dotfiles
status:
	${MAKE} test
	git status

# Push any changes up to the git repository
push:
	@git add -A
	@git commit -m "Update"
	@git push git@github.com:RobLoach/dotfiles.git master

pull:
	@git pull
	@git status

restart:
	@exec bash

vendor/asdf/bin/asdf:
	@git submodule update --init --recursive

submodules: vendor/asdf/bin/asdf

submodules-clean:
	@git submodule deinit -f .

submodules-test:
	@test -f vendor/asdf/bin/asdf && echo "[x] Submodules found" || echo "[ ] Submodules not found"

update:
	@echo "Updating Dependencies"
	@git submodule update --init --remote --recursive
	@git status

asdf: bash submodules
	-@asdf plugin add nodejs
	-@asdf plugin add php
	-@asdf plugin add emsdk
	-@asdf plugin add golang
	-@asdf plugin add c3 https://github.com/RobLoach/asdf-c3.git

asdf-test:
	@asdf version >/dev/null 2>&1 && echo "[x] asdf installed correctly" || echo "[ ] asdf not found"

asdf-clean:
	@rm -rf ${HOME}/.tool-versions

deps: asdf
	@echo "Installing Dependencies"
	@asdf install
	@asdf global nodejs latest
	@asdf global golang latest
	echo "asdf global c3 latest"
	echo "asdf global php latest"

# ssh
${HOME}/.ssh:
	@mkdir -p ${HOME}/.ssh

${HOME}/.ssh/config: ${HOME}/.ssh
	@ln -fs $(DOTFILES)/.sshconfig ${HOME}/.ssh/config

ssh: ssh-clean ${HOME}/.ssh/config
	@echo "ssh"

ssh-clean:
	@rm -f ${HOME}/.ssh/config

ssh-test:
	@test ! -f ${HOME}/.ssh/config && echo "[ ] SSH config not found" || echo "[x] SSH config found"

# git
git: git-clean
	@echo "git"
	@ln -fs $(DOTFILES)/.gitconfig ${HOME}/.gitconfig

git-clean:
	@rm -f ${HOME}/.gitconfig

git-test:
	@test ! -f ${HOME}/.gitconfig && echo "[ ] Git config not found" || echo "[x] Git config found"

gnome: gnome-clean
	@echo "Gnome"
	@ln -fs $(DOTFILES)/.face ${HOME}/.face

gnome-clean:
	@rm -f ${HOME}/.face

gnome-test:
	@test ! -f ${HOME}/.face && echo "[ ] Gnome face not found" || echo "[x] Gnome face found"

# bash
bash: bash-clean
	@echo "bash"
	@ln -fs $(DOTFILES)/.bashrc ${HOME}/.bashrc

bash-clean:
	@rm -f ${HOME}/.bashrc

bash-test:
	@test ! -f ${HOME}/.bashrc && echo "[ ] Bash config not found" || echo "[x] Bash config found"

vim: vim-clean submodules
	@echo "vim"
	@echo "set runtimepath+=${DOTFILES}/vendor/vimrc" >> ${HOME}/.vimrc
	@echo "source ${DOTFILES}/vendor/vimrc/vimrcs/basic.vim" >> ${HOME}/.vimrc
	@echo "source ${DOTFILES}/vendor/vimrc/vimrcs/filetypes.vim" >> ${HOME}/.vimrc
	@echo "source ${DOTFILES}/vendor/vimrc/vimrcs/plugins_config.vim" >> ${HOME}/.vimrc
	@echo "source ${DOTFILES}/vendor/vimrc/vimrcs/extended.vim" >> ${HOME}/.vimrc
	@echo "source ${DOTFILES}/.vimrc-extras.vim" >> ${HOME}/.vimrc

vim-clean:
	@rm -f ${HOME}/.vimrc

vim-test:
	@test ! -f ${HOME}/.vimrc && echo "[ ] Vim config not found" || echo "[x] Vim config found"

nano: nano-clean submodules
	@echo "nano"
	@cat ${DOTFILES}/.nanorc > ${HOME}/.nanorc
	@echo "include \"${DOTFILES}/vendor/nano-syntax-highlighting/*.nanorc\"" >> ${HOME}/.nanorc

nano-clean:
	@rm -f ${HOME}/.nanorc

nano-test:
	@test ! -f ${HOME}/.nanorc && echo "[ ] Nano rc not found" || echo "[x] Nano rc found"

# Console colors for gnome-terminal: https://github.com/Gogh-Co/Gogh
gogh:
	GOGH_APPLY_SCRIPT=$(DOTFILES)/vendor/gogh/apply-colors.sh \
	GOGH_ALACRITTY_SCRIPT=$(DOTFILES)/vendor/gogh/apply-alacritty.py \
	GOGH_TERMINATOR_SCRIPT=$(DOTFILES)/vendor/gogh/apply-terminator.py \
	TERMINAL=gnome-terminal \
	bash $(DOTFILES)/vendor/gogh/installs/dracula.sh

inputrc: inputrc-clean
	@echo "inputrc"
	@ln -fs $(DOTFILES)/.inputrc ${HOME}/.inputrc

inputrc-clean:
	@rm -f ${HOME}/.inputrc

inputrc-test:
	@test ! -f ${HOME}/.inputrc && echo "[ ] inputrc not found" || echo "[x] inputrc found"
