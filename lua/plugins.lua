return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use({
    "shaunsingh/nord.nvim", -- Colorscheme
    commit = "78f5f001709b5b321a35dcdc44549ef93185e024",
  })

  use 'itchyny/lightline.vim'
end)