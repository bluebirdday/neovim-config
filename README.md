# Neovim repo for neovim >=0.11

## Requirements
neovim >=0.11, this can be checked with: `nvim --version`

## LSP servers (optional)
Autocomplete works out of the box via buffer words. Install any of the following for language-specific autocomplete:

| Language | Binary | Install |
|----------|--------|---------|
| Lua | `lua-language-server` | `brew install lua-language-server` |
| PHP | `phpactor` | `composer global require phpactor/phpactor` |
| JavaScript / TypeScript | `typescript-language-server` | `npm install -g typescript-language-server typescript` |

## Installation
Just clone the repo
```
git clone git@github.com:bluebirdday/neovim-config.git ~/.config/nvim
```
and start neovim with `nvim`

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
wget https://github.com/neovim/neovim/releases/download/v0.12.1/nvim-linux-x86_64.tar.gz
tar xzvf nvim-linux-x86_64.tar.gz
mkdir -p /data/web/.local/bin
ln -s /data/web/bin/nvim-linux-x86_64/bin/nvim /data/web/.local/bin/nvim
```


## What does this do?

- Install some plugins (lualine, markdown reader, nvim-tree, telescope, tokyonight colorscheme, treesitter, whichkey)
- Sets some keymappings and options
- dont copy to clipboard on delete
- only enable mouse on insert mode  
