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

---

## Editing

| Key | Action |
|-----|--------|
| `Alt+j` / `Alt+↓` | Move line down |
| `Alt+k` / `Alt+↑` | Move line up |
| `<leader>j` / `<leader>↓` | Move line down (1 step) |
| `<leader>k` / `<leader>↑` | Move line up (1 step) |
| `>` (visual) | Indent right (keeps selection) |
| `<` (visual) | Indent left (keeps selection) |
| `Alt+j/k` (visual) | Move selection up / down |

> Note: `d`, `c`, `x`, `dd`, `diw`, `ciw` delete to void register — clipboard is not polluted.

---

## Window Resizing

| Key | Action |
|-----|--------|
| `Ctrl+,` | Vertical resize +3 |
| `Ctrl+.` | Vertical resize -3 |

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
