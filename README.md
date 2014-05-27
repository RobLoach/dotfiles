# Rob Loach's Dotfiles

Everyone loves [Dotfiles](http://dotfiles.github.io). Feel free to use mine, if you want.


## Dependencies

* [git](http://git-scm.com)
* [PHP](http://php.net)
* [Zsh](http://www.zsh.org/)


## Features

* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh/)
* Custom Environmental Aliases
  * `cp ~/.dotfiles/.dotfiles.aliases-env ~/.dotfiles.aliases-env`
* [Composer](http://getcomposer.org) global installation
* Git configruation


## Installation

1. Check out the repository into something like `~/.dotfiles`:
  ``` bash
  git clone git@github.com:RobLoach/dotfiles.git ~/.dotfiles
  ```

2. Update the *git submodules* to retrieve any third-party dependencies:
  ``` bash
  cd ~/.dotfiles
  git submodule update --init --recursive
  ```

3. Run `install.php` to symlink all the dotfiles accordingly:
  ``` bash
  php ~/.dotfiles/install.php
  ```


## License

Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT license](http://creativecommons.org/licenses/MIT/)

Copyright &copy; Rob Loach (http://robloach.net)
