return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

--   use({
--     "shaunsingh/nord.nvim", -- Colorscheme
--     commit = "78f5f001709b5b321a35dcdc44549ef93185e024",
--   })

  use 'itchyny/lightline.vim'

  use ({
        'rmehri01/onenord.nvim',
        commit = "749ee2f7fdeb9a02f25195d4850d2ff16240c863"
  })
end)