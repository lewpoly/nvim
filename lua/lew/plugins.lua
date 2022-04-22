local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  -- LSP
  use "neovim/nvim-lspconfig"
  use "williamboman/nvim-lsp-installer"
  use "ray-x/lsp_signature.nvim"
  use "simrat39/symbols-outline.nvim"
  use "simrat39/rust-tools.nvim"
  use "filipdutescu/renamer.nvim"
  use "onsails/lspkind-nvim"
  use "folke/lsp-colors.nvim"
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
  use "nvim-treesitter/playground"
  use {
    "lewis6991/spellsitter.nvim",
    config = function()
      require("spellsitter").setup {
        enable = true,
      }
    end,
  }
  use { "p00f/nvim-ts-rainbow" }
  use "folke/trouble.nvim"
  use "antoinemadec/FixCursorHold.nvim"
  use "lukas-reineke/indent-blankline.nvim"
  use "tamago324/nlsp-settings.nvim"
  use "jose-elias-alvarez/typescript.nvim"
  -- use("SmiteshP/nvim-gps")

  -- Telescope
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-file-browser.nvim"
  use "nvim-telescope/telescope-ui-select.nvim"
  use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
  -- use("FeiyouG/command_center.nvim")
  use "nvim-lua/popup.nvim"
  use "nvim-lua/plenary.nvim"
  use "BurntSushi/ripgrep"
  use {
    "nvim-telescope/telescope-media-files.nvim",
    config = function() end,
  }

  -- Completion
  use "rafamadriz/friendly-snippets"
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"
  use "hrsh7th/cmp-cmdline"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-emoji"
  use { "tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp" }
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
  use "windwp/nvim-autopairs"
  -- use("blackCauldron7/surround.nvim")
  use "tpope/vim-surround"
  use "tpope/vim-repeat"
  use "tpope/vim-speeddating"

  -- Colorizer
  -- use("norcalli/nvim-colorizer.lua")
  use {
    "RRethy/vim-hexokinase",
    run = "make hexokinase",
    config = function()
      vim.g.Hexokinase_highlighters = { "virtual" }
      vim.g.Hexokinase_optInPatterns = {
        "full_hex",
        "rgb",
        "rgba",
        "hsl",
        "hsla",
        "triple_hex",
        -- "colour_names",
      }
    end,
  }
  -- Colorschemes
  use "rose-pine/neovim"
  use "sainnhe/sonokai"
  -- use("daschw/leaf.nvim")
  use "navarasu/onedark.nvim"
  use "rmehri01/onenord.nvim"
  use "lewpoly/sherbet.nvim"
  -- use("lewpoly/nvcode-color-schemes.vim")
  use "LunarVim/darkplus.nvim"
  -- use("rebelot/kanagawa.nvim")
  use {
    "catppuccin/nvim",
    as = "catppuccin",
  }

  -- Formatting
  use "jose-elias-alvarez/null-ls.nvim"

  -- File Exploration
  use "kyazdani42/nvim-tree.lua"
  -- use("tamago324/lir.nvim")
  use "kyazdani42/nvim-web-devicons"

  -- Git
  use "lewis6991/gitsigns.nvim"

  -- Miscellaneous
  use "lewis6991/impatient.nvim"
  use "karb94/neoscroll.nvim"
  use "RRethy/vim-illuminate"
  use "unblevable/quick-scope"
  use "matbme/JABS.nvim"
  use "nacro90/numb.nvim"
  use "rcarriga/nvim-notify"
  use "phaazon/hop.nvim"

  -- ToggleTerm
  use { "akinsho/toggleterm.nvim" }

  -- Lualine
  use "nvim-lualine/lualine.nvim"

  -- Bufferline
  use "akinsho/bufferline.nvim"
  use "moll/vim-bbye"

  -- Dashboard/Alpha
  use "goolord/alpha-nvim"
  -- use("glepnir/dashboard-nvim")
  use "ahmedkhalf/project.nvim"

  -- Comment
  use {
    "terrortylor/nvim-comment",
    config = function()
      require("nvim_comment").setup()
    end,
  }
  use "folke/todo-comments.nvim"
  use "JoosepAlviste/nvim-ts-context-commentstring"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
