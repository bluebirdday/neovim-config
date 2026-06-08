# Neovim Keybinding Cheatsheet

> Leader: `Space` — Local leader: `\`

---

## Navigation

| Key | Action |
|-----|--------|
| `Ctrl+h/j/k/l` | Move between windows / Tmux panes |
| `Ctrl+d` | Page down (centered) |
| `Ctrl+u` | Page up (centered) |
| `n` / `N` | Next / prev search result (centered) |
| `Esc` | Clear search highlight |

---

## Buffers

| Key | Action |
|-----|--------|
| `<leader>[` | Previous buffer |
| `<leader>]` | Next buffer |
| `Shift+h` / `[b` | Previous buffer (bufferline) |
| `Shift+l` / `]b` | Next buffer (bufferline) |
| `[B` / `]B` | Move buffer left / right |
| `<leader>bp` | Toggle pin |
| `<leader>bP` | Delete non-pinned buffers |
| `<leader>bl` | Delete buffers to the left |
| `<leader>br` | Delete buffers to the right |

---

## File Explorer

| Key | Action |
|-----|--------|
| `<leader>e` | Toggle file tree |

---

## Telescope (Fuzzy Finder)

| Key | Action |
|-----|--------|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | Find buffers |
| `<leader>fh` | Help tags |
| `<leader>fk` | Search all keymaps |

---

## Editing

| Key | Action |
|-----|--------|
| `y` / `Y` | Yank (→ system clipboard) |
| `Alt+j` / `Alt+↓` | Move line down (re-indents) |
| `Alt+k` / `Alt+↑` | Move line up (re-indents) |
| `>` (visual) | Indent right (keeps selection) |
| `<` (visual) | Indent left (keeps selection) |
| `Alt+j/k` (visual) | Move selection up / down |

> Clipboard: only **yank** (`y`/`Y`) goes to the system clipboard. `d`, `c`, `x` use
> Vim's own registers — they don't touch the system clipboard, but are still
> pasteable in-buffer with `p`. To paste *from* the system clipboard, use `"+p`.

---

## Window Resizing

| Key | Action |
|-----|--------|
| `Alt+,` | Vertical resize +3 (hold Alt, tap to repeat) |
| `Alt+.` | Vertical resize -3 (hold Alt, tap to repeat) |

---

## LSP / Code

| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `<leader>d` | Show diagnostic (float) |
| `K` | Hover docs *(Neovim default)* |
| `grn` | Rename symbol *(Neovim default)* |
| `gra` | Code action *(Neovim default)* |
| `grr` | References *(Neovim default)* |
| `gri` | Implementation *(Neovim default)* |
| `[d` / `]d` | Previous / next diagnostic *(Neovim default)* |

---

## Completion (mini.completion)

| Key | Action |
|-----|--------|
| `Ctrl+n` / `Ctrl+p` | Navigate items |
| `Ctrl+y` | Confirm item |
| `Ctrl+e` | Close menu |

---

## Toggle Options

| Key | Action |
|-----|--------|
| `<leader>lw` | Toggle word wrap |
| `<leader>ln` | Toggle line numbers |

---

## Misc

| Key | Action |
|-----|--------|
| `<leader>?` | Show buffer-local keymaps (which-key) |
| `Ctrl+\` | Go to previous Tmux pane |
