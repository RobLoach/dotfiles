# RobLoach's Dotfiles

Everyone loves [Dotfiles](http://dotfiles.github.io). These are mine, but feel free to use them yourself.

## Features

- [oh-my-bash](https://github.com/ohmybash/oh-my-bash) for a minimalist bash theme
- [asdf-vm](https://asdf-vm.com/) for version management of development tools
- [nano syntax highlighting](https://github.com/galenguyer/nano-syntax-highlighting) for improved nano-ing
- [vimrc](https://github.com/amix/vimrc/) for the ultimate vim experience
- [Gogh](https://github.com/Gogh-Co/Gogh?tab=readme-ov-file#--gogh) for consistent terminal emulator color schemes
- [bash-completion](https://github.com/scop/bash-completion) for a set of completions for shell applications
- [Dracula Theme](https://draculatheme.com/) wherever possible
- [gitalias](https://github.com/GitAlias/gitalias) commands for easier version control
- [Composer](https://getcomposer.org) applications installed via [cgr](https://github.com/consolidation/cgr)
- Cleanly managed through symlinks and `make`
- Absolutely no guarantees that things work or won't break your system :astronaut:

## Dependencies

* [git](http://git-scm.com)
* [make](http://gnu.org/software/make)
* [bash](https://www.gnu.org/software/bash/)

## Installation

1. Clone the repository into `~/.dotfiles`:
  ``` bash
  git clone --recursive https://github.com/RobLoach/dotfiles.git ~/.dotfiles
  ```

2. Install the dotfiles by using [make](http://www.gnu.org/software/make/):
  ``` bash
  make -C ~/.dotfiles
  ```

## Uninstall

``` bash
make clean -C ~/.dotfiles
rm -rf ~/.dotfiles
```

## Test

To make sure all components are installed properly, use...
```sh
make test -C ~/.dotfiles
```

## Development

Update all dependencies with...
```
make update -C ~/.dotfiles
```

## License

Licensed under the [zlib license](LICENSE). Copyright &copy; Rob Loach (https://robloach.net).
