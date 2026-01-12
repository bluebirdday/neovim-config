vim.api.nvim_create_autocmd("TextYankPost", {
	pattern = "*",
	callback = function()
	vim.highlight.on_yank({ timeout = 300 })
	end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = { '*.php' },
  callback = function() vim.treesitter.start() end,
})
