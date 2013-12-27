default:
  source ~/.bash_profile

install:
  @git reset --hard HEAD
  @git pull
  @rm -rf ~/.bash_it
  @git clone https://github.com/revans/bash-it.git ~/.bash_it
  @~/.bash_it/install.sh
  @git reset --hard HEAD

.PHONY: default
