# Rob Loach's Dotfiles

Everyone loves [Dotfiles](http://dotfiles.github.io). This aims to ease the deployment of complete development environments.

## Features

- [asdf-vm](https://asdf-vm.com/) for version management of development tools
- git configs, commit templates, and aliases

## Dependencies

* [git](http://git-scm.com)
* [make](http://gnu.org/software/make)
* [bash](https://www.gnu.org/software/bash/)

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
