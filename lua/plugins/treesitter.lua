return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'main',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    local ts = require('nvim-treesitter')

    -- main branch: parsers are installed explicitly (no auto_install).
    -- markdown + markdown_inline are needed by render-markdown.nvim.
    -- Guard against a not-yet-synced `master` checkout (no .install) so we don't
    -- hard-crash startup — if this fires, run `:Lazy sync` to switch to `main`.
    if type(ts.install) == 'function' then
      ts.install({
        'lua', 'php', 'javascript', 'typescript', 'tsx',
        'markdown', 'markdown_inline',
      })
    else
      vim.schedule(function()
        vim.notify(
          'nvim-treesitter is on the old `master` branch — run `:Lazy sync` to switch to `main`.',
          vim.log.levels.WARN
        )
      end)
    end

    -- Highlighting is started per buffer (works on either branch, core Neovim API).
    -- pcall guards filetypes that have no installed parser yet.
    vim.api.nvim_create_autocmd('FileType', {
      desc = 'Start treesitter highlighting',
      callback = function()
        pcall(vim.treesitter.start)
      end,
    })
  end,
}
