return {
  'nvim-treesitter/nvim-treesitter',
  -- Pinned to master: the `main` branch requires Neovim >= 0.12 and the
  -- tree-sitter CLI, which our 0.11 servers don't have. master works on
  -- 0.11 and 0.12 and only needs a C compiler.
  branch = 'master',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup({
      -- php_only handles the code injected inside <?php ?> blocks.
      -- markdown + markdown_inline are needed by render-markdown.nvim.
      ensure_installed = {
        'lua', 'php', 'php_only', 'javascript', 'typescript', 'tsx',
        'markdown', 'markdown_inline',
      },
      auto_install = true,
      highlight = { enable = true },
    })
  end,
}
