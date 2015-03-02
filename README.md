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
* [make](http://gnu.org/software/make)
* [Zsh](http://www.zsh.org)


## Installation

1. Check out the repository into `~/.dotfiles`:
  ``` bash
  git clone git@github.com:RobLoach/dotfiles.git ~/.dotfiles
  ```

2. Install the dotfiles by using [make](http://www.gnu.org/software/make/):
  ``` bash
  cd ~/.dotfiles
  make
  ```


## Uninstall

```
make clean
```


## License

Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT license](http://creativecommons.org/licenses/MIT/)

Copyright &copy; Rob Loach (http://robloach.net)
