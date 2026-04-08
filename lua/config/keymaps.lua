local map = vim.keymap.set


-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
map('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- find and center
map('n', 'n', 'nzzzv')
map('n', 'N', 'Nzzzv')

map('n', '<leader>[', '<cmd>bprevious<CR>')
map('n', '<leader>]', '<cmd>bnext<CR>')

-- Dont copy to clipboard on delete in normal mode
map('n', 'dd', '"_dd')
map('n', 'x', '"_x')
map('n', 'd', '"_d')
map('n', 'c', '"_c')
map('n', 'diw', '"_diw')
map('n', 'ciw', '"_ciw')

-- Toggle word wrap
map('n', '<leader>lw', '<cmd>set wrap!<CR>')

map('n', '<A-j>', ':m .+1<CR>==', {desc = 'Move line down'})
map('n', '<A-Down>', ':m .+1<CR>==', {desc = 'Move line down'})
map('n', '<A-k>', ':m .-2<CR>==', {desc = 'Move line up'})
map('n', '<A-Up>', ':m .-2<CR>==', {desc = 'Move line up'})

map('v', '<A-j>', ':m >+1<CR>gv=gv', {desc = 'Move selection down'})
map('v', '<A-Down>', ':m >+1<CR>gv=gv', {desc = 'Move selection down'})
map('v', '<A-k>', ':m <-2<CR>gv=gv', {desc = 'Move selection up'})
map('v', '<A-Up>', ':m <-2<CR>gv=gv', {desc = 'Move selection up'})

-- Indent in visual mode with > and <, dont clear selection after
map('v', '<', '<gv', {desc = 'Indent left and reselect' })
map('v', '>', '>gv', {desc = 'Indent righ and reselect' })

-- move line one down
map('n', '<leader><Down>', ':m +1<CR>', { desc = 'Move line one down'})
map('n', '<leader>j', ':m +1<CR>', { desc = 'Move line one down' })

-- move line up
map('n', '<leader><Up>', ':m -2<CR>', { desc = 'Move line one up' })
map('n', '<leader>k', ':m -2<CR>', { desc = 'Move line one up' })

-- On page up and page down, center screen
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')

-- Resize windows using control + "," & "."
map('n', '<C-,>', ':vertical resize +3<CR>')
map('n', '<C-.>', ':vertical resize -3<CR>')

-- Move 1 up and down in visual mode for selected lines
-- map('v', '<S-Up>', ':m -2<CR>gv=gv')
-- map('v', '<S-Down>', ":m '>+1<CR>gv=gv")

map('n', '<leader>ln', function()
   print('Toggle line numbers')
  vim.api.nvim_command('set number!')
  vim.api.nvim_command('set relativenumber!')
 end, {desc= 'Show line numbers'})


