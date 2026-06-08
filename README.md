# Neovim config (requires Neovim >= 0.12)

## Requirements

- **Neovim >= 0.12** — check with `nvim --version`. Starting Neovim on an older
  version shows a warning; treesitter highlighting and other features won't work.
- **A C compiler** (`cc`/`gcc`/`clang`) — to compile treesitter parsers.
- **The `tree-sitter` CLI** — the treesitter `main` branch builds parsers with it.
  See [Install the tree-sitter CLI](#install-the-tree-sitter-cli).

## LSP servers (optional)

Autocomplete works out of the box via buffer words. Install any of the following for language-specific autocomplete:

| Language | Binary | Install |
|----------|--------|---------|
| Lua | `lua-language-server` | `brew install lua-language-server` |
| PHP | `phpactor` | `composer global require phpactor/phpactor` |
| JavaScript / TypeScript | `typescript-language-server` | `npm install -g typescript-language-server typescript` |

## Installation

Clone the repo:

```
git clone git@github.com:bluebirdday/neovim-config.git ~/.config/nvim
```

Start Neovim with `nvim`. On first launch, lazy.nvim bootstraps and installs the
plugins. Then build the treesitter parsers and verify:

```vim
:Lazy sync
:TSUpdate
:checkhealth nvim-treesitter
```

`:checkhealth` should report no errors (a C compiler + the tree-sitter CLI must be
on `PATH`). Open a file (e.g. a `.php`) to confirm syntax highlighting works.

## Install the tree-sitter CLI

The treesitter `main` branch needs the `tree-sitter` CLI to build parsers.

### Prebuilt binary (recommended — works without root)

On managed hosting `npm install -g` usually fails with `EACCES` (no root). Drop a
prebuilt binary into a directory already on your `PATH` instead (x86_64 Linux):

```sh
mkdir -p ~/.local/bin
curl -L https://github.com/tree-sitter/tree-sitter/releases/download/v0.25.10/tree-sitter-linux-x64.gz \
  | gunzip > ~/.local/bin/tree-sitter
chmod +x ~/.local/bin/tree-sitter
tree-sitter --version
```

(If `~/.local/bin` isn't on your `PATH`, add `export PATH="$HOME/.local/bin:$PATH"`
to your shell rc.)

> **Why pin v0.25.10 instead of `latest`?** The newest binaries (v0.26+) are built
> against glibc 2.39 and fail on Debian 12 (Bookworm, glibc 2.36) with
> `version 'GLIBC_2.39' not found`. v0.25.10 only needs glibc 2.34 and has the
> `tree-sitter build` command this config relies on. On a newer distro
> (glibc >= 2.39) you can use `latest`; on an older one, pick a version whose
> required glibc fits (check with `strings tree-sitter | grep GLIBC_ | sort -V | tail -1`).

### Via npm (needs a writable global prefix)

```sh
npm config set prefix "$HOME/.local"
npm install -g tree-sitter-cli
```

## Install / upgrade Neovim

### Ubuntu

```
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
```

### Hypernode / managed hosting (no root)

Download a Neovim >= 0.12 release and symlink the binary into `~/.local/bin`
(adjust the version/paths as needed):

```shell
mkdir -p ~/bin
cd ~/bin
wget https://github.com/neovim/neovim/releases/download/v0.12.1/nvim-linux-x86_64.tar.gz
tar xzvf nvim-linux-x86_64.tar.gz
mkdir -p ~/.local/bin
ln -sf ~/bin/nvim-linux-x86_64/bin/nvim ~/.local/bin/nvim
```

## What does this do?

- **Plugins** (via lazy.nvim): lualine, bufferline, nvim-tree, telescope (+ fzf),
  treesitter, render-markdown, which-key, mini.nvim (completion + snippets),
  tokyonight colorscheme, tmux-navigator.
- **LSP**: enables `lua_ls`, `phpactor`, and `ts_ls` when their binaries are present
  (adds `gd`, `<leader>d`, on top of Neovim's built-in 0.11+ LSP keymaps).
- **Clipboard**: yank (`y`/`Y`) goes to the system clipboard; delete/change (`d`/`c`/`x`)
  stay in Vim's own registers (no clipboard pollution, still pasteable with `p`).
  Over SSH this uses OSC 52, so yanks reach your **local** machine's clipboard.
- **Keymaps & options**: see [CHEATSHEET.md](CHEATSHEET.md) for the full keybinding list.
- Mouse enabled in all modes; relative line numbers; persistent undo; treesitter
  syntax highlighting for lua, php, js/ts, html, css, xml, yaml, json, twig, markdown.
