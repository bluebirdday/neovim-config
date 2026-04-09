return {
    cmd = { "lua-language-server" },
    root_markers = { ".luarc.json" },
    filetypes = { "lua" },
	settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = { "vim" },
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
            },
            signatureHelp = { enabled = true },
        },
    },
}

