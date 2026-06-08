------------------------------
--
-- Custom neovim configuration
--
------------------------------

-- This config targets Neovim >= 0.12 (treesitter `main` branch, modern APIs).
-- Warn early on older versions so an un-upgraded server is obvious.
if vim.fn.has("nvim-0.12") == 0 then
  vim.schedule(function()
    vim.notify(
      ("This Neovim config requires >= 0.12 (you have %s). Treesitter highlighting "
        .. "and other features won't work until you upgrade Neovim."):format(tostring(vim.version())),
      vim.log.levels.WARN
    )
  end)
end

require("config.lazy")
require("config.options")
require("config.keymaps")
require("config.autocmd")
require("config.lsp")


