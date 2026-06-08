return {
"folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- Label the <leader> groups so the popup is organized
    spec = {
      { "<leader>b", group = "buffer" },
      { "<leader>f", group = "find" },
      { "<leader>l", group = "toggle" },
    },
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
