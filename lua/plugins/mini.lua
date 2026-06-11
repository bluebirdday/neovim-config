return {
    'nvim-mini/mini.nvim',
    config = function()
        -- Snippet engine (expands LSP snippets and user-defined ones)
        require('mini.snippets').setup()

        -- Completion is handled by blink.cmp on this branch (see plugins/blink.lua).
        -- mini.snippets above stays as blink's snippet source (mini_snippets preset).
    end,
}
