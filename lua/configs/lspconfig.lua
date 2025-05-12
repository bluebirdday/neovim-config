require("nvchad.configs.lspconfig").defaults()
local lspconfig = require "lspconfig"

local servers = { "html", "cssls", "phpactor", "vtsls", "lemminx" }

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers

lspconfig.phpactor.setup {}
