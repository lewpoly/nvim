-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- LSP
	use("neovim/nvim-lspconfig")
	use("williamboman/nvim-lsp-installer")
  use("simrat39/rust-tools.nvim")
	use("onsails/lspkind-nvim")
	use("folke/lsp-colors.nvim")
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  use({"p00f/nvim-ts-rainbow"})
	use("folke/trouble.nvim")

	-- Telescope
	use("nvim-telescope/telescope.nvim")
	use({
		"nvim-telescope/telescope-media-files.nvim",
		config = function() end,
	})
	use("nvim-lua/popup.nvim")
	use("nvim-lua/plenary.nvim")
	use("BurntSushi/ripgrep")

	-- Completion
	use("rafamadriz/friendly-snippets")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-nvim-lua")
	use({ "tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp" })
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("kdheepak/cmp-latex-symbols")
	use("hrsh7th/cmp-path")
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")
	use("blackCauldron7/surround.nvim")

	-- Colorizer
	use({
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	})

	-- Colorschemes
	-- use 'christianchiarulli/nvcode-color-schemes.vim'
  use("marko-cerovac/material.nvim")
  use("rebelot/kanagawa.nvim")
	use("rmehri01/onenord.nvim")
	use("EdenEast/nightfox.nvim")
	use("LunarVim/Colorschemes")
	use("Shatur/neovim-ayu")
  use("savq/melange")

	-- Formatting
	use({
		"jose-elias-alvarez/null-ls.nvim",
		config = function()
			require("null-ls").setup()
		end,
		requires = { "nvim-lua/plenary.nvim" },
	})

	-- Tree
	use({
		"kyazdani42/nvim-tree.lua",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("nvim-tree").setup({})
		end,
	})
	-- Git
	use({
		"lewis6991/gitsigns.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
		tag = "release", -- To use the latest release
	})

  use ("lewis6991/impatient.nvim")

	-- ToggleTerm
	use({ "akinsho/toggleterm.nvim" })

	-- Lualine
	use("nvim-lualine/lualine.nvim")

	-- Bufferline
	use("akinsho/bufferline.nvim")
  use("moll/vim-bbye")

	-- Dashboard
	use("glepnir/dashboard-nvim")

	-- Comment
	use({
		"terrortylor/nvim-comment",
		config = function()
			require("nvim_comment").setup()
		end,
	})
end)
