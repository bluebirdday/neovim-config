require "nvchad.mappings"
-- add yours here


local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- find and center
map('n', 'n', 'nzzzv', opts)
map('n', 'N', 'Nzzzv', opts)

vim.api.nvim_set_option("clipboard", "unnamedplus")
-- Dont copy to clipboard on delete
map('n', 'dd', '"_dd')
map('n', 'x', '"_x')
map('n', 'd', '"_d')
map('n', 'c', '"_c')
map('n', 'diw', '"_diw')
map('n', 'ciw', '"_ciw')

-- move line one down
map('n', '<leader><Down>', ':m +1<CR>', { desc = 'Move line one down'})
map('n', '<leader>j', ':m +1<CR>', { desc = 'Move line one down' })

-- move line up
map('n', '<leader><Up>', ':m -2<CR>', { desc = 'Move line one up' })
map('n', '<leader>k', ':m -2<CR>', { desc = 'Move line one up' })

-- On page up and page down, center screen
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')

-- Resize windows using control + "." & "."
map('n', '<C-,>', ':vertical resize +3<CR>')
map('n', '<C-.>', ':vertical resize -3<CR>')

-- Move 1 up and down in visual mode for selected lines
map('v', '<S-Up>', ':m -2<CR>gv=gv')
map('v', '<S-Down>', ":m '>+1<CR>gv=gv'")

-- Highlight text on yank 
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Only set this up if we're in a tmux session
if os.getenv("TMUX") then
  vim.keymap.del("n", "<C-h>")
  vim.keymap.del("n", "<C-j>")
  vim.keymap.del("n", "<C-k>")
  vim.keymap.del("n", "<C-l>")
  vim.keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>")
  vim.keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>")
  vim.keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>")
  vim.keymap.set("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>")
end
