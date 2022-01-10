require("kanagawa").setup({
	undercurl = false, -- enable undercurls
	commentStyle = "NONE",
	functionStyle = "NONE",
	keywordStyle = "NONE",
	statementStyle = "NONE",
	typeStyle = "NONE",
	variablebuiltinStyle = "NONE",
	specialReturn = false, -- special highlight for the return keyword
	specialException = false, -- special highlight for exception handling keywords
	transparent = false, -- do not set background color
	colors = {
    bg = "#232731"
  },
	overrides = {},
})

-- material setup
-- available styles: deep ocean, darker, lighter, oceanic, palenight.
-- vim.g.material_style = "oceanic"
-- require("material").setup({
--
-- 	contrast = true, -- Enable contrast for sidebars, floating windows and popup menus like Nvim-Tree
-- 	borders = true, -- Enable borders between verticaly split windows
--
-- 	popup_menu = "dark", -- Popup menu style ( can be: 'dark', 'light', 'colorful' or 'stealth' )
--
-- 	italics = {
-- 		comments = false, -- Enable italic comments
-- 		keywords = false, -- Enable italic keywords
-- 		functions = false, -- Enable italic functions
-- 		strings = false, -- Enable italic strings
-- 		variables = false, -- Enable italic variables
-- 	},
--
-- 	contrast_windows = { -- Specify which windows get the contrasted (darker) background
-- 		"terminal", -- Darker terminal background
-- 		"packer", -- Darker packer background
-- 		"qf", -- Darker qf list background
-- 	},
--
-- 	text_contrast = {
-- 		lighter = false, -- Enable higher contrast text for lighter style
-- 		darker = false, -- Enable higher contrast text for darker style
-- 	},
--
-- 	disable = {
-- 		background = false, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
-- 		term_colors = false, -- Prevent the theme from setting terminal colors
-- 		eob_lines = false, -- Hide the end-of-buffer lines
-- 	},
--
-- 	custom_highlights = {}, -- Overwrite highlights with your own
-- })

vim.cmd("colorscheme kanagawa")
