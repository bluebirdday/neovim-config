# neovim configuration for Bluebird Day servers

## Requirements
neovim >= 0.8
Not all Hypernodes have the same neovim version, this can be checked with:
```nvim --version```

## Installation

### Update neovim on Hypernode
If you are using a Hypernode, you can update neovim with the following commands:

! This only works on Debian Bookwork Hypernodes. Debian Buster Hypernodes can be upgraded via Hypernode support.

Download latest neovim and symlink to the binary
```shell
mkdir -p ~/bin
cd ~/bin
wget https://github.com/neovim/neovim/releases/download/v0.11.0/nvim-linux-x86_64.tar.gz
tar xzvf nvim-linux-x86_64.tar.gz
mkdir -p /data/web/.local/bin
ln -s /data/web/bin/nvim-linux-x86_64/bin/nvim /data/web/.local/bin/nvim
```
Log out and ssh back in to the server

Clone the repo
```
git clone git@github.com:bluebirdday/neovim-config.git ~/.config/nvim
```

## What does this do?

- Uses lazy.nvim package manger
- Sets some keymappings and installs nord colorscheme
- Installs treesitter for syntax highlighting
