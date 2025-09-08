return {
  'stevearc/conform.nvim',
  opts = {
    --formatters_by_ft = {
    --  lua = { "stylua" },
    --  xml = {"xmllint"},
    --},
    --formatters = {
    --  xmllint = {
    --    command = "xmllint",
    --    args = {"--format", "-"},
    --    stdin = true
    --  }
    --},
  },
  event = {"BufReadPre", "BufNewFile"},
  config = function()
    local conform = require("conform")
    conform.setup({
    formatters_by_ft = {
      lua = { "stylua" },
      xml = {"xmllint"},
    }
    })

    vim.keymap.set({ "n", "v" }, "<leader>cf", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      })
    end, { desc = "Format file or range (in visual mode)" })
  end,
}
