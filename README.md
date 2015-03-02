# Rob Loach's Dotfiles

Everyone loves [Dotfiles](http://dotfiles.github.io), feel free to use mine.


## Features

* [Composer config](http://getcomposer.org)
* [Git config](gitconfig)
* Environmental aliases
  * `cp ~/.dotfiles/.dotfiles.aliases-env ~`
* [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh/), with plugins:
  * composer
  * docker
  * git
  * go
  * npm
  * nvm
* [nvm](https://github.com/creationix/nvm)


## Dependencies

* [git](http://git-scm.com)
* [PHP](http://php.net)
* [Zsh](http://www.zsh.org/)


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
