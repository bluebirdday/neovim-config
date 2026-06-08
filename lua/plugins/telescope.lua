return {
    'nvim-telescope/telescope.nvim', tag = 'v0.2.1',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function () 
	local telescope = require("telescope.builtin")
	vim.keymap.set('n', '<leader>ff', telescope.find_files, { desc = 'Telescope find files' })
	vim.keymap.set('n', '<leader>fg', telescope.live_grep, { desc = 'Telescope live grep' })
	vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = 'Telescope buffers' })
	vim.keymap.set('n', '<leader>fh', telescope.help_tags, { desc = 'Telescope help tags' })
	-- Load the compiled fzf sorter (built via `make` above)
	require('telescope').load_extension('fzf')
    end
}
