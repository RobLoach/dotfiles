# RobLoach's Dotfiles

Everyone loves [Dotfiles](http://dotfiles.github.io). These are mine, but feel free to use them yourself.

## Features

- [oh-my-bash](https://github.com/ohmybash/oh-my-bash) for a minimalist bash theme
- [asdf-vm](https://asdf-vm.com/) for version management of development tools
- [nano syntax highlighting](https://github.com/galenguyer/nano-syntax-highlighting) for improved nano-ing
- [vimrc](https://github.com/amix/vimrc/) for the ultimate vim experience
- [Gogh](https://github.com/Gogh-Co/Gogh?tab=readme-ov-file#--gogh) for consistent terminal emulator color schemes
- [bash-completion](https://github.com/scop/bash-completion) for a set of completions for shell applications
- [Dracula Theme](https://draculatheme.com/) wherever possible, via [tinted-shell](https://github.com/tinted-theming/tinted-shell) and [tinted-vim](https://github.com/tinted-theming/tinted-vim)
- [gitalias](https://github.com/GitAlias/gitalias) commands for easier version control
- [Composer](https://getcomposer.org) and [npm](https://www.npmjs.com) applications, like [Terminus](https://github.com/pantheon-systems/terminus) and [tldr](https://github.com/tldr-pages/tldr-node-client)
- [Emscripten](https://emscripten.org/), loaded once it has been activated with `dependencies/emsdk/emsdk activate latest`
- Configuration for git, ssh, nano, readline, screen and [Zed](https://zed.dev)
- Cleanly managed through symlinks and `make`
- Absolutely no guarantees that things work or won't break your system :astronaut:

## Dependencies

* [git](http://git-scm.com)
* [make](http://gnu.org/software/make)
* [bash](https://www.gnu.org/software/bash/)

## Installation

1. Clone the repository, usually into `~/.dotfiles`:
  ``` bash
  git clone --recursive https://github.com/RobLoach/dotfiles.git ~/.dotfiles
  ```

2. Install the dotfiles by using [make](http://www.gnu.org/software/make/):
  ``` bash
  make -C ~/.dotfiles
  ```

3. Optionally, install Node.js, PHP, Go and glab with asdf, along with the npm and Composer applications:
  ``` bash
  make deps -C ~/.dotfiles
  ```

4. Optionally, apply the Dracula color scheme to gnome-terminal:
  ``` bash
  make gogh -C ~/.dotfiles
  ```

## What gets installed

| File | Installed as |
| --- | --- |
| `.bashrc`, `.bash_profile` | Symlinked into `~` |
| `.gitconfig` | Included from a generated `~/.gitconfig`, along with gitalias and `.gitconfig.core.excludesfile` |
| `.sshconfig` | Symlinked to `~/.ssh/config` |
| `.vimrc-extras.vim` | Sourced from a generated `~/.vimrc`, after amix/vimrc |
| `.nanorc` | Copied into a generated `~/.nanorc`, with nano-syntax-highlighting |
| `.inputrc`, `.screenrc`, `.face` | Symlinked into `~` |
| `dot_config/*` | Each folder symlinked into `~/.config` |

Anything already in the way is backed up with a `.bak` suffix.

## Things to know

- `~/.env`, if it exists, is sourced and its variables exported to every shell.
- `.gitconfig` sets Rob's name and GPG key, and signs every commit and tag. Change the `[user]` section, or turn off `commit.gpgsign` and `tag.gpgsign`, before using it yourself.
- The `gl` alias runs [glab](https://gitlab.com/gitlab-org/cli), replacing oh-my-bash's `git pull` alias.
- asdf is pinned to 0.15, the last bash release, so `make update` leaves it alone.

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

After pulling changes that rename submodules, run `git submodule sync` to point existing checkouts at them.

## License

Licensed under the [zlib license](LICENSE). Copyright &copy; Rob Loach (https://robloach.net).
