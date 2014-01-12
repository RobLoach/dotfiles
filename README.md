# Rob's Dotfiles

[Bash-It](https://github.com/revans/bash-it) or [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh/) usage.


## Dependencies

* [git](http://git-scm.com)
* [php](http://php.net)


## Features

* [Bash-It](https://github.com/revans/bash-it) if on [bash](https://www.gnu.org/software/bash/)
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh/) if on [zsh](http://www.zsh.org/)
* Custom Environmental Aliases
  * `cp ~/.dotfiles/.dotfiles.aliases-env ~/.dotfiles.aliases-env`


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
