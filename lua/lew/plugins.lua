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

  use "lewis6991/impatient.nvim"
  -- LSP
  use "neovim/nvim-lspconfig"
  use "williamboman/nvim-lsp-installer"
  use "ray-x/lsp_signature.nvim"
  use "simrat39/symbols-outline.nvim"
  use "simrat39/rust-tools.nvim"
  use "Saecki/crates.nvim"
  -- use "filipdutescu/renamer.nvim"
  use "onsails/lspkind-nvim"
  use "folke/lsp-colors.nvim"
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
  use "nvim-treesitter/playground"
  use { "p00f/nvim-ts-rainbow" }
  use "folke/trouble.nvim"
  use "antoinemadec/FixCursorHold.nvim"
  use "lukas-reineke/indent-blankline.nvim"
  use "tamago324/nlsp-settings.nvim"
  use "jose-elias-alvarez/typescript.nvim"
  use "vim-ruby/vim-ruby"
  use "tpope/vim-rails"
  use "windwp/nvim-ts-autotag"
  use "j-hui/fidget.nvim"
  use { "christianchiarulli/nvim-gps", branch = "text_hl" }
  use {
    "lewis6991/spellsitter.nvim",
    config = function()
      require("spellsitter").setup {
        enable = true,
      }
    end,
  }
  -- use "github/copilot.vim"
  use {
    "zbirenbaum/copilot.lua",
    event = { "VimEnter" },
    config = function()
      vim.defer_fn(function()
        require "lew.copilot"
      end, 100)
    end,
  }
  use {
    "zbirenbaum/copilot-cmp",
    module = "copilot_cmp",
  }

  -- REST
  use {
    "NTBBloodbath/rest.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    config = function() end,
    commit = "e5f68db73276c4d4d255f75a77bbe6eff7a476ef",
  }

  -- Markdown
  use {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    setup = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  }

  -- Telescope
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-file-browser.nvim"
  use "nvim-telescope/telescope-ui-select.nvim"
  use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
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
  use { "dsznajder/vscode-es7-javascript-react-snippets", run = "yarn install --frozen-lockfile && yarn compile" }

  -- Colorizer
  -- use "norcalli/nvim-colorizer.lua"
  use {
    "RRethy/vim-hexokinase",
    run = "make hexokinase",
    config = function()
      vim.g.Hexokinase_highlighters = { "backgroundfull" }
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
  use "rmehri01/onenord.nvim"
  use "lewpoly/sherbet.nvim"
  -- use "lewpoly/nvcode-color-schemes.vim"
  use "LunarVim/darkplus.nvim"
  use "rebelot/kanagawa.nvim"
  use "lewis6991/github_dark.nvim"
  use "folke/tokyonight.nvim"

  -- Formatting
  use "jose-elias-alvarez/null-ls.nvim"

  -- File Exploration
  use "kyazdani42/nvim-tree.lua"
  -- use("tamago324/lir.nvim")
  use "kyazdani42/nvim-web-devicons"

  -- Git
  use "lewis6991/gitsigns.nvim"

  -- Miscellaneous
  use "stevearc/dressing.nvim"
  use "karb94/neoscroll.nvim"
  use "RRethy/vim-illuminate"
  use "unblevable/quick-scope"
  -- use { "christianchiarulli/JABS.nvim", requires = { "kyazdani42/nvim-web-devicons" } }
  use "nacro90/numb.nvim"
  use "rcarriga/nvim-notify"
  use "phaazon/hop.nvim"
  use "ghillb/cybu.nvim"
  use "dstein64/vim-startuptime"

  -- DAP
  use "mfussenegger/nvim-dap"
  use "theHamsta/nvim-dap-virtual-text"
  use "rcarriga/nvim-dap-ui"
  use "Pocco81/dap-buddy.nvim"

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
