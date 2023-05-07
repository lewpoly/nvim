local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  --Plugin Manager
  "nvim-lua/plenary.nvim",

  -- LSP
  "neovim/nvim-lspconfig",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "mfussenegger/nvim-jdtls",
  "nvim-lua/lsp_extensions.nvim",
  "ray-x/lsp_signature.nvim",
  -- "simrat39/symbols-outline.nvim",
  "simrat39/rust-tools.nvim",
  "Saecki/crates.nvim",
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  "nvim-treesitter/playground",
  "p00f/nvim-ts-rainbow",
  "christianchiarulli/lua-dev.nvim",
  "folke/trouble.nvim",
  -- "lukas-reineke/indent-blankline.nvim",
  "jose-elias-alvarez/typescript.nvim",
  "windwp/nvim-ts-autotag",
  "j-hui/fidget.nvim",
  -- { "christianchiarulli/nvim-gps", branch = "text_hl" },

  -- "github/copilot.vim",
  {
    "zbirenbaum/copilot.lua",
    event = { "VimEnter" },
    config = function()
      vim.defer_fn(function()
        require("copilot").setup()
      end, 100)
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    dependencies = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end,
  },
  -- "lvimuser/lsp-inlayhints.nvim"
  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",

  -- REST
  {
    "NTBBloodbath/rest.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function() end,
    commit = "e5f68db73276c4d4d255f75a77bbe6eff7a476ef",
  },

  -- Note Taking
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
  "mickael-menu/zk-nvim",

  -- Telescope
  "nvim-telescope/telescope.nvim",
  -- "nvim-telescope/telescope-file-browser.nvim",
  "nvim-telescope/telescope-ui-select.nvim",
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  "nvim-lua/popup.nvim",
  "BurntSushi/ripgrep",
  {
    "nvim-telescope/telescope-media-files.nvim",
    config = function() end,
  },

  -- Code Running
  "is0n/jaq-nvim",
  {
    "0x100101/lab.nvim",
    build = "cd js && npm ci",
  },

  -- Completion
  "rafamadriz/friendly-snippets",
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-nvim-lua",
  -- "zbirenbaum/copilot-cmp",
  "hrsh7th/cmp-cmdline",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-emoji",
  {
    "tzachar/cmp-tabnine",
    build = "./install.sh",
    dependencies = "hrsh7th/nvim-cmp",
  },
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",
  "windwp/nvim-autopairs",
  "tpope/vim-surround",
  "tpope/vim-repeat",
  "tpope/vim-speeddating",
  { "dsznajder/vscode-es7-javascript-react-snippets", build = "yarn install --frozen-lockfile && yarn compile" },

  -- Colorizer
  { "NvChad/nvim-colorizer.lua", commit = "20fd009" },

  -- Colorschemes
  -- "lewpoly/sherbet.nvim",
  -- "~/colors/sherbet.nvim",
  "AlexvZyl/nordic.nvim",

  -- Formatting
  "jose-elias-alvarez/null-ls.nvim",

  -- File Exploration
  "mbbill/undotree",
  "kyazdani42/nvim-tree.lua",
  "kyazdani42/nvim-web-devicons",
  -- "ThePrimeagen/harpoon",

  -- Git
  "lewis6991/gitsigns.nvim",

  -- Miscellaneous
  "junegunn/vim-slash",
  "folke/noice.nvim",
  -- "stevearc/dressing.nvim",
  -- "karb94/neoscroll.nvim",
  "RRethy/vim-illuminate",
  -- "unblevable/quick-scope",
  "nacro90/numb.nvim",
  "rcarriga/nvim-notify",
  "phaazon/hop.nvim",
  "ghillb/cybu.nvim",
  {
    "SmiteshP/nvim-navic",
    dependencies = "neovim/nvim-lspconfig",
  },
  "dstein64/vim-startuptime",

  -- DAP
  "mfussenegger/nvim-dap",
  "rcarriga/nvim-dap-ui",
  "theHamsta/nvim-dap-virtual-text",
  -- "Pocco81/dap-buddy.nvim",

  -- ToggleTerm
  { "akinsho/toggleterm.nvim", version = "v2.*" },

  -- Lualine
  "nvim-lualine/lualine.nvim",
  -- "christianchiarulli/lualine.nvim",

  -- Bufferline
  { "akinsho/bufferline.nvim", version = "v2.*", dependencies = "kyazdani42/nvim-web-devicons" },
  "moll/vim-bbye",

  -- Dashboard/Alpha
  "goolord/alpha-nvim",
  -- "ahmedkhalf/project.nvim",

  -- Comment
  "numToStr/comment.nvim",
  "JoosepAlviste/nvim-ts-context-commentstring",
  "folke/todo-comments.nvim",
}

local opts = {}

require("lazy").setup(plugins, opts)
