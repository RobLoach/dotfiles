# Rob Loach's Dotfiles

Everyone loves [Dotfiles](http://dotfiles.github.io). This aims to ease the deployment of complete development environments.

## Features

* [Composer](http://getcomposer.org) configuration
* [Git](http://www.git-scm.com/) configuration
* [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh/)
* [nvm](https://github.com/creationix/nvm)

## Dependencies

* [git](http://git-scm.com)
* [make](http://gnu.org/software/make)
* [Zsh](http://www.zsh.org)

## Installation

1. Check out the repository into `~/.dotfiles`:
  ``` bash
  git clone https://github.com/RobLoach/dotfiles.git ~/.dotfiles
  ```

2. Install the dotfiles by using [make](http://www.gnu.org/software/make/):
  ``` bash
  cd ~/.dotfiles
  make
  ```

## Uninstall

``` bash
cd ~/.dotfiles
make clean
```

## License

Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT license](http://creativecommons.org/licenses/MIT/)

Copyright &copy; Rob Loach (http://robloach.net)
