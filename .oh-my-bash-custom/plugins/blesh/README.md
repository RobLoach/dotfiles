# ble.sh

[ble.sh](https://github.com/akinomyoga/ble.sh) plugin for oh-my-bash to detect where ble.sh is installed and load it.

## Installation

1. [Install ble.sh](https://github.com/asdf-vm/asdf#setup) by running the following:
    ``` bash
    git clone --recursive --depth 1 --shallow-submodules https://github.com/akinomyoga/ble.sh.git
    make -C ble.sh install PREFIX=~/.local
    ```

2. Enable the plugin by adding it to your oh-my-bash `plugins` definition in `~/.bashrc`.
    ``` sh
    plugins=(blesh)
    ```
