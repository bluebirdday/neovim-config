require("plugins")

vim.cmd[[colorscheme onenord]]
vim.cmd[[set mouse=a]]
vim.cmd[[set noshowmode]]

vim.o.incsearch = true
vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.number = true
vim.o.relativenumber = true
vim.g.mapleader = " "

vim.o.shiftwidth = 4
vim.o.smartindent = true

vim.o.softtabstop = 4
vim.o.tabstop = 4
vim.o.termguicolors = true

vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10


vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }


vim.keymap.set('n', 'dd', '"_dd')
vim.keymap.set('n', 'x', '"_x')
vim.keymap.set('n', 'd', '"_d')

vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- find and center
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)

vim.keymap.set('n', '<leader>x', ':bdelete!<CR>', opts) --close buffer
vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', opts) -- new buffer

vim.keymap.set('n', '<leader>to', ':tabnew<CR>', opts) -- open new tab
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', opts) --close current tab
vim.keymap.set('n', '<leader>tn', ':tabn<CR>', opts) -- next tab
vim.keymap.set('n', '<leader>tp', ':tabp<CR>', opts) -- previous tab

-- window split
vim.keymap.set('n', '<leader>v', '<C-w>v', opts) -- vertical split
vim.keymap.set('n', '<leader>h', '<C-w>s', opts) -- vertical split
vim.keymap.set('n', '<leader>se', '<C-w>=', opts) -- vertical split
vim.keymap.set('n', '<leader>sx', ':close <CR>', opts) -- vertical split

-- toggle line wrapping
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)

vim.api.nvim_set_option("clipboard", "unnamedplus")

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})