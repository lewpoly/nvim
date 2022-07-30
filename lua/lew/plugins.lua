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

return packer.startup(function(use)
  --Plugin Manager
  use "wbthomason/packer.nvim"
  use "lewis6991/impatient.nvim"
  use "nvim-lua/plenary.nvim"

  -- LSP
  use "neovim/nvim-lspconfig"
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "nvim-lua/lsp_extensions.nvim"
  use "ray-x/lsp_signature.nvim"
  use "simrat39/symbols-outline.nvim"
  use "simrat39/rust-tools.nvim"
  use "Saecki/crates.nvim"
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
  use "nvim-treesitter/playground"
  use "p00f/nvim-ts-rainbow"
  use "christianchiarulli/lua-dev.nvim"
  use "folke/trouble.nvim"
  use "lukas-reineke/indent-blankline.nvim"
  use "jose-elias-alvarez/typescript.nvim"
  use "windwp/nvim-ts-autotag"
  use "j-hui/fidget.nvim"
  -- use { "christianchiarulli/nvim-gps", branch = "text_hl" }
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
  use { "lvimuser/lsp-inlayhints.nvim", branch = "readme" }
  use "https://git.sr.ht/~whynothugo/lsp_lines.nvim"

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
  -- use "nvim-telescope/telescope-file-browser.nvim"
  use "nvim-telescope/telescope-ui-select.nvim"
  use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
  use "nvim-lua/popup.nvim"
  use "BurntSushi/ripgrep"
  use {
    "nvim-telescope/telescope-media-files.nvim",
    config = function() end,
  }

  -- Code Running
  use "is0n/jaq-nvim"
  use {
    "0x100101/lab.nvim",
    run = "cd js && npm ci",
  }

  -- Completion
  use "rafamadriz/friendly-snippets"
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"
  use "zbirenbaum/copilot-cmp"
  use "hrsh7th/cmp-cmdline"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-emoji"
  use { "tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp" }
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
  use "windwp/nvim-autopairs"
  use "tpope/vim-surround"
  use "tpope/vim-repeat"
  use "tpope/vim-speeddating"
  use { "dsznajder/vscode-es7-javascript-react-snippets", run = "yarn install --frozen-lockfile && yarn compile" }

  -- Colorizer
  use "NvChad/nvim-colorizer.lua"

  -- Colorschemes
  use "lewpoly/sherbet.nvim"
  -- use "~/colors/sherbet.nvim"
  use "lewpoly/onegruv.nvim"
  use "shaunsingh/nord.nvim"
  use "LunarVim/horizon.nvim"
  use "LunarVim/synthwave84.nvim"
  use "LunarVim/Colorschemes"
  -- use "LunarVim/onedarker.nvim"
  -- use "LunarVim/darkplus.nvim"
  -- use "lewis6991/github_dark.nvim"
  -- use "ellisonleao/gruvbox.nvim"

  -- Formatting
  use "jose-elias-alvarez/null-ls.nvim"

  -- File Exploration
  use "kyazdani42/nvim-tree.lua"
  use "kyazdani42/nvim-web-devicons"
  use "christianchiarulli/JABS.nvim"
  use "ThePrimeagen/harpoon"

  -- Git
  use "lewis6991/gitsigns.nvim"

  -- Miscellaneous
  use "junegunn/vim-slash"
  use "stevearc/dressing.nvim"
  use "karb94/neoscroll.nvim"
  use "RRethy/vim-illuminate"
  use "unblevable/quick-scope"
  use "nacro90/numb.nvim"
  use "rcarriga/nvim-notify"
  use "phaazon/hop.nvim"
  use "ghillb/cybu.nvim"
  use {
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig",
  }
  use "dstein64/vim-startuptime"

  -- DAP
  use "mfussenegger/nvim-dap"
  use "rcarriga/nvim-dap-ui"
  -- use "theHamsta/nvim-dap-virtual-text"
  -- use "Pocco81/dap-buddy.nvim"

  -- ToggleTerm
  use { "akinsho/toggleterm.nvim", tag = "v2.*" }

  -- Lualine
  use "christianchiarulli/lualine.nvim"

  -- Bufferline
  -- use "akinsho/bufferline.nvim"
  use "moll/vim-bbye"

  -- Dashboard/Alpha
  use "goolord/alpha-nvim"
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

  -- use {
  --   "RRethy/vim-hexokinase",
  --   run = "make hexokinase",
  --   config = function()
  --     vim.g.Hexokinase_highlighters = { "backgroundfull" }
  --     vim.g.Hexokinase_optInPatterns = {
  --       "full_hex",
  --       "rgb",
  --       "rgba",
  --       "hsl",
  --       "hsla",
  --       "triple_hex",
  --       -- "colour_names",
  --     }
  --   end,
  -- }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
