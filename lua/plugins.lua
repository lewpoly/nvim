require('packer').startup(function()

  use 'wbthomason/packer.nvim'

  -- Telescope
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'

  -- Completion
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/nvim-compe'
  use 'windwp/nvim-autopairs'

  -- Color
  use 'norcalli/nvim-colorizer.lua'
  use 'christianchiarulli/nvcode-color-schemes.vim'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'norcalli/snippets.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = 'TSUpdate' }

  -- Tree
  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'

  -- Lualine
  use 'hoob3rt/lualine.nvim'

  -- Bufferline
  use 'akinsho/bufferline.nvim'

  -- Dashboard
  use 'glepnir/dashboard-nvim'

  -- Kommentary
  use 'b3nj5m1n/kommentary'


end)
