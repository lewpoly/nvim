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
	use("nvim-treesitter/playground")
	use({ "p00f/nvim-ts-rainbow" })
	use("folke/trouble.nvim")
	use("antoinemadec/FixCursorHold.nvim")
	use("lukas-reineke/indent-blankline.nvim")
	use("tamago324/nlsp-settings.nvim")
	use("jose-elias-alvarez/nvim-lsp-ts-utils")

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
	use("hrsh7th/cmp-cmdline")
	use({ "tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp" })
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("kdheepak/cmp-latex-symbols")
	use("hrsh7th/cmp-path")
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")
	use("blackCauldron7/surround.nvim")
	use("tpope/vim-surround")

	-- Colorizer
	-- use("norcalli/nvim-colorizer.lua")
	use({
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
        "colour_names",
			}
		end,
	})
	-- Colorschemes
	-- use 'lewpoly/nvcode-color-schemes.vim'
	use("rmehri01/onenord.nvim")
	use("EdenEast/nightfox.nvim")
	use("lewpoly/gruvplus.nvim")
	use("Shatur/neovim-ayu")
	use("LunarVim/darkplus.nvim")

	-- Formatting
	use("jose-elias-alvarez/null-ls.nvim")

	-- Tree
	use("kyazdani42/nvim-tree.lua")
	use("kyazdani42/nvim-web-devicons")

	-- Git
	use({
		"lewis6991/gitsigns.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
		tag = "release", -- To use the latest release
	})

	use("lewis6991/impatient.nvim")

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
	use("JoosepAlviste/nvim-ts-context-commentstring")
end)
