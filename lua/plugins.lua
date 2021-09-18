require('packer').startup(function()

  use 'wbthomason/packer.nvim'

  -- Telescope
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'BurntSushi/ripgrep'

  -- Completion
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  -- Cmp
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'kdheepak/cmp-latex-symbols'
  use 'hrsh7th/cmp-path'

  -- Color
  use 'norcalli/nvim-colorizer.lua'
  use 'christianchiarulli/nvcode-color-schemes.vim'
  -- use 'LunarVim/Colorschemes'
  -- use 'LunarVim/onedarker.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'onsails/lspkind-nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Tree
  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'

  -- Lualine
  use 'hoob3rt/lualine.nvim'

  -- Bufferline
  use 'akinsho/bufferline.nvim'

  -- Dashboard
  use 'glepnir/dashboard-nvim'

  -- Comment
  use 'terrortylor/nvim-comment'


end)
