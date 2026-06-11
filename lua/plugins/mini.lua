return {
    'nvim-mini/mini.nvim',
    config = function()
        -- Snippet engine (expands LSP snippets and user-defined ones)
        require('mini.snippets').setup()

        -- Completion: LSP + buffer words, auto-popup, works without LSP too
        require('mini.completion').setup()

        -- Tab / Shift-Tab navigate the completion popup when it's open
        -- (first Tab selects the first item; otherwise Tab inserts a tab).
        -- Confirm the selected item with Enter or Ctrl-y.
        vim.keymap.set('i', '<Tab>',   [[pumvisible() ? "\<C-n>" : "\<Tab>"]],   { expr = true })
        vim.keymap.set('i', '<S-Tab>', [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]], { expr = true })
    end,
}
