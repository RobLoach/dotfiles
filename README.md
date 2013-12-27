# Rob's Dotfiles

Some customizations built upon [Bash It](https://github.com/revans/bash-it).


## Dependencies

* [git](http://git-scm.com/)
* [make](https://www.gnu.org/software/make/)


## Installation

The following will walk through Bash It installation, and customizations.

``` bash
git clone https://github.com/RobLoach/dotfiles.git ~/.dotfiles && mv -f ~/.dotfiles/* ~/.dotfiles/.[^.]* ~ && rm -rf ~/.dotfiles && make install -C ~
```


## Usage

See available aliases and options:
``` bash
bash-it
```

Update the available dot files:
``` bash
make -C ~
```

Uninstalling will remove Bash It, documentation and git integration:
``` bash
make uninstall -C ~
```


## License

Dotfiles is released under the MIT License:

> Copyright (C) 2013 [Rob Loach](http://robloach.net)
>
> Permission is hereby granted, free of charge, to any person obtaining
> a copy of this software and associated documentation files (the
> "Software"), to deal in the Software without restriction, including
> without limitation the rights to use, copy, modify, merge, publish,
> distribute, sublicense, and/or sell copies of the Software, and to
> permit persons to whom the Software is furnished to do so, subject to
> the following conditions:
>
> The above copyright notice and this permission notice shall be
> included in all copies or substantial portions of the Software.
>
> THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
> EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
> MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
> NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
> LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
> OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
> WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
