return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  opts = {
    ensure_installed = { 'lua', 'php', 'javascript' },
    auto_install = true,
  },
}
