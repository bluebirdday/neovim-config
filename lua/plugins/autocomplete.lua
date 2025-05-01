return {
   {
           'williamboman/mason.nvim',
           config = function() require('mason').setup() end,
       },
       {
           'neovim/nvim-lspconfig',
           dependencies = { 'williamboman/mason.nvim' },
           config = function()

           end
       },
       {
           'williamboman/mason-lspconfig.nvim',
           dependencies = { 'williamboman/mason.nvim', 'neovim/nvim-lspconfig' },
           config = function()
               local config = require('mason-lspconfig')

               config.setup({
                   ensure_installed = { 'lua_ls', 'eslint', 'phpactor' }
               })

               config.setup_handlers({ function(server_name)
                   require('lspconfig')[server_name].setup({})
               end
               })
           end
       },
}