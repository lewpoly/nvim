local my_colors = {
	bg = "#232731",
	surimiOrange = "#ebcb8b",
	springGreen = "#d08770",
	sakuraPink = "#b5cea8",
	new_color = "#5e81ac",
}
local overrides = {
	TSBoolean = { fg = my_colors.new_color },
}
require("kanagawa").setup({
	overrides = overrides,
	colors = my_colors,
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
})

vim.cmd("colorscheme kanagawa")
