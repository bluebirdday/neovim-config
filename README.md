# neovim configuration for Bluebird Day servers

## Requirements
neovim >= 0.7
Not all Hypernodes have the same neovim version, this can be checked with:
```nvim --version```

## Installation

### Hypernode
Download latest neovim and symlink to the binary
```shell
mkdir -p ~/bin
wget https://github.com/neovim/neovim/releases/download/v0.11.0/nvim-linux-x86_64.tar.gz
tar xzvf nvim-linux-x86_64.tar.gz
ln -s /data/web/bin/nvim-linux-x86_64/bin/nvim /data/web/.local/bin/nvim
```


Install packer:

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Clone the repo
```
git clone git@github.com:bluebirdday/neovim-config.git ~/.config/nvim
```

First time start will generate an error because of Packer missing modules, install these modules:
```
:PackerInstall
```
Quit and restart neovim

## What does this do?

- Uses Packer package manger as lazy does require neovim >= 0.8 and Hypernode has 0.7 installed.
- Sets some keymappings and installs nord colorscheme
