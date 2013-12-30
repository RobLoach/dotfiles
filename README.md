# Rob's Dotfiles

Based on [Bash It](https://github.com/revans/bash-it).


## Dependencies

* [git](http://git-scm.com)
* [php](http://php.net)


## Installation

1. Check out the repository into something like `~/.dotfiles`:
``` bash
git clone git@github.com:RobLoach/dotfiles.git ~/.dotfiles
```

2. Update the *git submodules* to retrieve any third-party dependencies:
``` bash
cd ~/.dotfiles
git submodule init
git submodule update
```

3. Run `install.php` to symlink all the dotfiles accordingly:
``` bash
php ~/.dotfiles/install.php
```


## License

Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT license](http://creativecommons.org/licenses/MIT/)

Copyright &copy; Rob Loach (http://robloach.net)
