return {
    'nvim-mini/mini.nvim',
    config = function()
        -- Snippet engine (expands LSP snippets and user-defined ones)
        require('mini.snippets').setup()

        -- Completion: LSP + buffer words, auto-popup, works without LSP too
        require('mini.completion').setup()
    end,
}
