-- blink.cmp — completion engine (trial; A/B against mini.completion on master).
-- Snippets come from mini.snippets (configured in plugins/mini.lua).
return {
  'saghen/blink.cmp',
  version = '1.*', -- release tag ships a prebuilt fuzzy matcher (no cargo needed)
  dependencies = { 'nvim-mini/mini.nvim' }, -- mini.snippets snippet source
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    -- Keys mirror the mini.completion setup: Tab selects (first Tab = first item),
    -- Enter / Ctrl-y accept, Ctrl-Space toggles, Ctrl-e hides.
    keymap = {
      preset = 'none',
      ['<Tab>']     = { 'select_next', 'fallback' },
      ['<S-Tab>']   = { 'select_prev', 'fallback' },
      ['<Down>']    = { 'select_next', 'fallback' },
      ['<Up>']      = { 'select_prev', 'fallback' },
      ['<C-n>']     = { 'select_next', 'fallback' },
      ['<C-p>']     = { 'select_prev', 'fallback' },
      ['<CR>']      = { 'accept', 'fallback' },
      ['<C-y>']     = { 'accept', 'fallback' },
      ['<C-e>']     = { 'hide', 'fallback' },
      ['<C-Space>'] = { 'show', 'show_documentation', 'hide_documentation' },
      ['<C-b>']     = { 'scroll_documentation_up', 'fallback' },
      ['<C-f>']     = { 'scroll_documentation_down', 'fallback' },
    },
    snippets = { preset = 'mini_snippets' },
    sources = { default = { 'lsp', 'path', 'snippets', 'buffer' } },
    -- Rust fuzzy matcher when its prebuilt binary loads, else pure-Lua fallback
    -- (keeps it glibc-safe on the Debian servers — same lesson as tree-sitter).
    fuzzy = { implementation = 'prefer_rust_with_warning' },
    completion = {
      -- noselect-like, matching the mini setup: nothing preselected; first Tab
      -- picks the first item and inserts it inline.
      list = { selection = { preselect = false, auto_insert = true } },
      documentation = { auto_show = true, auto_show_delay_ms = 200 },
    },
  },
  opts_extend = { 'sources.default' },
}
