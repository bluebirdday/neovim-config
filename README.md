# Neovim repo for neovim >=0.11

## Requirements
neovim >=0.11, this can be checked with: `nvim --version`

## Install neovim

### Ubuntu manually
```
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
```

### Hypernode 

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

Clone the repo
```
git clone git@github.com:bluebirdday/neovim-config.git ~/.config/nvim
```

## What does this do?

- Uses [nvchad](https://nvchad.com/) as basis
- Sets some keymappings and installs a dark colorscheme
- dont copy to clipboard on delete
