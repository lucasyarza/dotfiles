![NeoVim](https://raw.githubusercontent.com/neovim/neovim.github.io/master/logos/neovim-logo-300x87.png)
# NeoVim dotfile
## Installation
### Create virtualenv
Create a virtualenv in: `editors/nvim/`
```
$ python3 -m venv .venv
```
### Install requirements
```
$ source .venv/bin/activate
$ pip install -r requirements.txt
```
### Create a symlinks
```
$ mv .config/nvim/ .config/nvim.old
$ ln -s ~/.dotfiles/editors/nvim .config/nvim
```

### Open nvim and install plugins
```
:PlugInstall
```
