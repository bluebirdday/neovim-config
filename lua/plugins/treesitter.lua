return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'main',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    -- main branch: parsers are installed explicitly (no auto_install).
    -- markdown + markdown_inline are needed by render-markdown.nvim.
    require('nvim-treesitter').install({
      'lua', 'php', 'javascript', 'typescript', 'tsx',
      'markdown', 'markdown_inline',
    })

    -- main branch: highlighting is not a module — start it per buffer.
    -- pcall guards filetypes that have no installed parser yet.
    vim.api.nvim_create_autocmd('FileType', {
      desc = 'Start treesitter highlighting',
      callback = function()
        pcall(vim.treesitter.start)
      end,
    })
  end,
}
