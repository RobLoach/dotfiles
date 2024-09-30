DOTFILES := $(shell pwd)

# Install all the dotfiles
install: welcome install-start submodules bash git gnome ssh vim nano inputrc test
	@echo ""
	@echo "Dotfiles installed. Run 'make deps' for optional dependencies."
	@echo ""

# Remove any of the dotfiles from the system
clean: submodules-clean git-clean gnome-clean ssh-clean bash-clean vim-clean nano-clean asdf-clean inputrc-clean deps-clean

# Test to make sure the dotfiles were set up correctly
test: submodules-test asdf-test ssh-test git-test gnome-test bash-test vim-test nano-test inputrc-test deps-test

welcome:
	@echo "Welcome to RobLoach/dotfiles!"
	@echo ""
	@echo "    make install: Install the dotfiles"
	@echo "    make test: Ensure everything was installed correctly"
	@echo "    make clean: Uninstall the dotfiles from the system"
	@echo "    make gogh: Installs the terminal color scheme"
	@echo "    make deps: Install tool dependencies with asdf"
	@echo ""

install-start:
	@echo "Installing dotfiles..."

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

submodules:
	@git submodule update --init --recursive

submodules-clean:
	@git submodule deinit -f .

submodules-test:
	@test -f dependencies/asdf/bin/asdf && echo "[x] Submodules" || echo "[ ] Submodules not found"

update:
	@echo "Updating Dependencies"
	@git pull origin master
	@git submodule update --init --remote --recursive
	@git status

asdf: bash submodules
	-@asdf plugin add nodejs
	-@asdf plugin add php
	-@asdf plugin add emsdk
	-@asdf plugin add golang
	-@asdf plugin add c3 https://github.com/RobLoach/asdf-c3.git
	-@asdf plugin add zig
	-@asdf plugin add rust

asdf-test:
	@asdf version >/dev/null 2>&1 && echo "[x] asdf installed correctly" || echo "[ ] asdf not found"

asdf-clean:
	@rm -rf ${HOME}/.tool-versions

deps: asdf
	@echo "Installing Dependencies"
	@asdf install
	@asdf global nodejs 22.7.0
	@echo "asdf global golang 1.23.0"
	@echo "asdf global zig 0.13.0"
	@echo "asdf global c3 0.6.2"
	@echo "asdf global php 8.3.9"
	@echo "asdf global rust latest"
	-@composer install
	-@npm install
	-@asdf reshim

deps-test:
	@test ! -f $(DOTFILES)/node_modules/.bin/tldr && echo "[ ] Node.js dependencies - Run 'make deps'" || echo "[x] Node.js dependencies"
	@test ! -f $(DOTFILES)/vendor/bin/cgr && echo "[ ] Composer dependencies - Run 'make deps'" || echo "[x] Composer dependencies"

deps-clean:
	@rm -rf $(DOTFILES)/node_modules package-lock.json
	@rm -rf $(DOTFILES)/vendor copmoser.lock

rust:
	@cargo install vivid
	-@asdf reshim

rust-test:
	@vivid --version >> /dev/null 2>&1 && echo "[x] Rust dependencies" || echo "[ ] Rust dependencies"

rust-clean:
	@cargo uninstall vivid

# ssh
ssh: ssh-clean
	@mkdir -p ${HOME}/.ssh
	@ln -fs $(DOTFILES)/.sshconfig ${HOME}/.ssh/config

ssh-clean:
	@rm -f ${HOME}/.ssh/config

ssh-test:
	@test ! -f ${HOME}/.ssh/config && echo "[ ] SSH config not found" || echo "[x] SSH config"

# git
git: git-clean
	@ln -fs $(DOTFILES)/.gitconfig ${HOME}/.gitconfig

git-clean:
	@rm -f ${HOME}/.gitconfig

git-test:
	@test ! -f ${HOME}/.gitconfig && echo "[ ] Git config not found" || echo "[x] Git config"

gnome: gnome-clean
	@ln -fs $(DOTFILES)/.face ${HOME}/.face

gnome-clean:
	@rm -f ${HOME}/.face

gnome-test:
	@test ! -f ${HOME}/.face && echo "[ ] Gnome face not found" || echo "[x] Gnome face"

# bash
bash: bash-clean
	@ln -fs $(DOTFILES)/.bashrc ${HOME}/.bashrc

bash-clean:
	@rm -f ${HOME}/.bashrc

bash-test:
	@test ! -f ${HOME}/.bashrc && echo "[ ] Bash config not found" || echo "[x] Bash config"

vim: vim-clean submodules
	@echo "set runtimepath+=${DOTFILES}/dependencies/vimrc" >> ${HOME}/.vimrc
	@echo "source ${DOTFILES}/dependencies/vimrc/vimrcs/basic.vim" >> ${HOME}/.vimrc
	@echo "source ${DOTFILES}/dependencies/vimrc/vimrcs/filetypes.vim" >> ${HOME}/.vimrc
	@echo "source ${DOTFILES}/dependencies/vimrc/vimrcs/plugins_config.vim" >> ${HOME}/.vimrc
	@echo "source ${DOTFILES}/dependencies/vimrc/vimrcs/extended.vim" >> ${HOME}/.vimrc
	@echo "source ${DOTFILES}/dependencies/base16-vim/colors/base16-dracula.vim" >> ${HOME}/.vimrc
	@echo "source ${DOTFILES}/.vimrc-extras.vim" >> ${HOME}/.vimrc

vim-clean:
	@rm -f ${HOME}/.vimrc

vim-test:
	@test ! -f ${HOME}/.vimrc && echo "[ ] Vim config not found" || echo "[x] Vim config"

nano: nano-clean submodules
	@cat ${DOTFILES}/.nanorc > ${HOME}/.nanorc
	@echo "include \"${DOTFILES}/dependencies/nano-syntax-highlighting/*.nanorc\"" >> ${HOME}/.nanorc

nano-clean:
	@rm -f ${HOME}/.nanorc

nano-test:
	@test ! -f ${HOME}/.nanorc && echo "[ ] nanorc not found" || echo "[x] nanorc"

# Console colors for gnome-terminal: https://github.com/Gogh-Co/Gogh
gogh:
	GOGH_APPLY_SCRIPT=$(DOTFILES)/dependencies/gogh/apply-colors.sh \
	GOGH_ALACRITTY_SCRIPT=$(DOTFILES)/dependencies/gogh/apply-alacritty.py \
	GOGH_TERMINATOR_SCRIPT=$(DOTFILES)/dependencies/gogh/apply-terminator.py \
	TERMINAL=gnome-terminal \
	bash $(DOTFILES)/dependencies/gogh/installs/dracula.sh

inputrc: inputrc-clean
	@ln -fs $(DOTFILES)/.inputrc ${HOME}/.inputrc

inputrc-clean:
	@rm -f ${HOME}/.inputrc

inputrc-test:
	@test ! -f ${HOME}/.inputrc && echo "[ ] inputrc not found" || echo "[x] inputrc"
