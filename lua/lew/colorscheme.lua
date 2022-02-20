vim.g.gruvbox_baby_function_style = "NONE"
vim.g.gruvbox_baby_keyword_style = "NONE"

-- Each highlight group must follow the structure:
-- ColorGroup = {fg = "foreground color", bg = "background_color", style = "some_style(:h attr-list)"}
-- See also :h highlight-guifg
-- Example:

-- Enable telescope theme
vim.g.gruvbox_baby_telescope_theme = 0

-- Enable transparent mode
-- vim.g.gruvbox_baby_transparent_mode = 1

vim.cmd("colorscheme gruvplus")

-- require("onedark").setup({
-- 	style = "darker",
-- })
-- require("onedark").load()
