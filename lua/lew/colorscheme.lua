local catppuccin = require("catppuccin")

catppuccin.setup({
	transparent_background = true,
	term_colors = false,
	styles = {
		comments = "italic",
		functions = "NONE",
		keywords = "NONE",
		strings = "NONE",
		variables = "NONE",
	},
	integrations = {
		treesitter = true,
		native_lsp = {
			enabled = true,
			virtual_text = {
				errors = "NONE",
				hints = "NONE",
				warnings = "NONE",
				information = "NONE",
			},
			underlines = {
				errors = "underline",
				hints = "underline",
				warnings = "underline",
				information = "underline",
			},
		},
		lsp_trouble = false,
		cmp = true,
		lsp_saga = false,
		gitgutter = false,
		gitsigns = true,
		telescope = true,
		nvimtree = {
			enabled = true,
			show_root = false,
			transparent_panel = true,
		},
		neotree = {
			enabled = false,
			show_root = false,
			transparent_panel = false,
		},
		which_key = false,
		indent_blankline = {
			enabled = true,
			colored_indent_levels = false,
		},
		dashboard = true,
		neogit = false,
		vim_sneak = false,
		fern = false,
		barbar = false,
		bufferline = true,
		markdown = true,
		lightspeed = false,
		ts_rainbow = true,
		hop = false,
		notify = true,
		telekasten = true,
		symbols_outline = true,
	},
})
-- vim.g.transparent_background = true
vim.cmd("colorscheme gruvplus")
-- vim.cmd("hi NormalNC guibg=NONE")
-- vim.cmd("hi Normal guibg=none ctermbg=none")
-- vim.cmd("hi LineNr guibg=none ctermbg=none")
-- vim.cmd("hi Folded guibg=none ctermbg=none")
-- vim.cmd("hi NonText guibg=none ctermbg=none")
-- vim.cmd("hi SpecialKey guibg=none ctermbg=none")
-- vim.cmd("hi VertSplit guibg=none ctermbg=none")
-- vim.cmd("hi SignColumn guibg=none ctermbg=none")
-- vim.cmd("hi StatusLine guibg=none ctermbg=none")
-- vim.cmd("hi EndOfBuffer guibg=none ctermbg=none")
-- vim.cmd("hi nvim_tree guibg=none ctermbg=none")
-- vim.cmd "hi Normal guibg=NONE ctermbg=NONE"
-- vim.cmd "hi LineNr guibg=NONE ctermbg=NONE"
