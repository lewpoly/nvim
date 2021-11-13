require('packer').startup(function(use)

  use 'wbthomason/packer.nvim'

  -- Telescope
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'BurntSushi/ripgrep'

  -- Completion
  use 'rafamadriz/friendly-snippets'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'kdheepak/cmp-latex-symbols'
  use 'hrsh7th/cmp-path'
  use 'windwp/nvim-autopairs'
  use "blackCauldron7/surround.nvim"
  use 'windwp/nvim-ts-autotag'

  -- Color
  use 'norcalli/nvim-colorizer.lua'
  use 'christianchiarulli/nvcode-color-schemes.vim'
  -- use 'LunarVim/Colorschemes'
  -- use 'LunarVim/onedarker.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'onsails/lspkind-nvim'
  use 'folke/lsp-colors.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'folke/trouble.nvim', requires = "kyazdani42/nvim-web-devicons" }

  -- Formatting
  use({ "jose-elias-alvarez/null-ls.nvim",
    config = function()
        require("null-ls").config({})
        require("lspconfig")["null-ls"].setup({})
    end,
    requires = {"nvim-lua/plenary.nvim", "neovim/nvim-lspconfig"}
    })

  -- Tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
}

  -- ToggleTerm
  use {"akinsho/toggleterm.nvim"}

  -- Lualine
  use 'nvim-lualine/lualine.nvim'

  -- Bufferline
  use 'akinsho/bufferline.nvim'

  -- Dashboard
  use 'glepnir/dashboard-nvim'

  -- Comment
  use 'terrortylor/nvim-comment'

end)
