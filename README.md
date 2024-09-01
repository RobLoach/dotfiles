# Rob Loach's Dotfiles

Everyone loves [Dotfiles](http://dotfiles.github.io). These are mine, but feel free to use them yourself.

## Features

- [oh-my-bash](https://github.com/ohmybash/oh-my-bash) for a minimalist bash theme
- [asdf-vm](https://asdf-vm.com/) for version management of development tools
- [gitalias] commands for easier version control
- [nano syntax highlighting](https://github.com/galenguyer/nano-syntax-highlighting) for improved nano-ing
- [vimrc](https://github.com/amix/vimrc/) for the ultimate vim experience
- Additional git configs and aliases
- Cleanly managed through symlinks and this one folder

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
  cd ~/.dotfiles
  make
  ```

## Uninstall

``` bash
cd ~/.dotfiles
make clean
rm -rf ~/.dotfiles
```

## Test

To make sure all components are installed properly, use...
```sh
make test
```

## Development

Update all dependencies with...
```
make update
```

## License

Licensed under the [zlib license](LICENSE). Copyright &copy; Rob Loach (https://robloach.net).
