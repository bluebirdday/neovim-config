return {
  'nvim-treesitter/nvim-treesitter',
  -- main branch — requires Neovim >= 0.12, a C compiler, and the tree-sitter CLI
  -- (npm i -g tree-sitter-cli). The whole fleet is standardized on 0.12+; see the
  -- version guard in init.lua.
  branch = 'main',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    local ok, ts = pcall(require, 'nvim-treesitter')

    -- main branch: parsers are installed explicitly (no auto_install).
    -- php_only handles code inside <?php ?>; markdown(_inline) for render-markdown;
    -- html/css cover injections in twig and in <style>/<script> tags.
    -- The guard avoids a hard crash if the plugin is still on a not-yet-synced
    -- `master` checkout (no .install) — run `:Lazy sync` then `:TSUpdate`.
    if ok and type(ts.install) == 'function' then
      ts.install({
        'lua', 'php', 'php_only', 'javascript', 'typescript', 'tsx',
        'markdown', 'markdown_inline',
        'html', 'css', 'xml', 'yaml', 'json', 'twig',
        'bash', -- covers .sh/.bash (filetype `sh`) and bash-shebang scripts
      })
    end

    -- zsh has no dedicated parser; use the bash parser for `.zsh` files too.
    pcall(vim.treesitter.language.register, 'bash', 'zsh')

    -- Highlighting is started per buffer; pcall guards filetypes with no parser yet.
    vim.api.nvim_create_autocmd('FileType', {
      desc = 'Start treesitter highlighting',
      callback = function()
        pcall(vim.treesitter.start)
      end,
    })
  end,
}
