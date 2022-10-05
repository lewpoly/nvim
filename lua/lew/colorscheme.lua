vim.g.lualew_colorscheme = "horizon"

function ColorMyPencils()
  vim.g.gruvbox_contrast_dark = "hard"
  vim.g.gruvbox_invert_selection = "0"
  vim.g.gruvbox_italic = "1"
  -- vim.g.gruvbox_italicize_comments = "1"

  vim.g.catppuccin_flavour = "mocha"
  -- vim.g.transparent_background = true

  -- vim.g.sherbet_italic_keywords = true
  -- vim.g.sherbet_italic_functions = false
  -- vim.g.sherbet_italic_comments = true
  -- vim.g.sherbet_italic_loops = true
  -- vim.g.sherbet_italic_conditionals = true
  vim.g.sherbet_italic_comments = true

  vim.g.nord_contrast = true
  vim.g.nord_borders = true

  vim.g.gruvbox_material_background = "hard"
  vim.g.gruvbox_material_foreground = "original"
  vim.opt.background = "dark"

  vim.cmd("colorscheme " .. vim.g.lualew_colorscheme)

  local hl = function(thing, opts)
    vim.api.nvim_set_hl(0, thing, opts)
  end

  hl("SignColumn", {
    bg = "none",
  })

  -- hl("Pmenu", {
  --   bg = "#504945",
  -- })

  -- hl("PmenuSel", {
  --   bg = "#83a598",
  --   fg = "#504945",
  -- })

  -- hl("CmpItemAbbrMatch", {
  --   fg = "#83a598",
  -- })

  -- hl("CmpItemAbbrMatchFuzzy", {
  --   fg = "#83a598",
  -- })

  hl("ColorColumn", {
    -- ctermbg = 0,
    bg = "#555555",
  })

  hl("CursorLineNR", {
    fg = "#fabd2f",
    bg = "None",
  })

  -- hl("LineNr", {
  --   fg = "#5eacd3",
  -- })

  hl("Normal", {
    bg = "#25282f",
    -- fg = "#ebdbb2",
  })

  -- hl("NvimTreeNormal", {
  --   bg = "None",
  --   -- fg = "#ebdbb2",
  -- })

  -- hl("Keyword", {
  --   fg = "#fb4934",
  -- })

  hl("Comment", {
    fg = "#808080",
    italic = true,
  })

  -- hl("TSKeywordReturn", {
  --   fg = "#fb4934",
  -- })

  -- hl("Conditional", {
  --   fg = "#fb4934",
  -- })

  -- hl("TSKeywordOperator", {
  --   fg = "#fb4934",
  -- })

  -- hl("String", {
  --   fg = "#d0f7a6",
  -- })

  -- hl("Function", {
  --   fg = "#d0f7a6",
  -- })

  -- hl("Type", {
  --   fg = "#d0f7a6",
  -- })

  -- hl("TSField", {
  --   fg = "#83a598",
  -- })

  -- hl("TSParameter", {
  --   fg = "#83a598",
  -- })

  -- hl("TSProperty", {
  --   fg = "#83a598",
  -- })

  -- hl("TSConstructor", {
  --   fg = "#d65d0e",
  -- })

  -- hl("TSPunctBracket", {
  --   fg = "#d65d0e",
  -- })

  -- hl("Operator", {
  --   fg = "#d65d0e",
  -- })

  -- hl("TSVariableBuiltin", {
  --   fg = "#d65d0e",
  -- })

  -- hl("Boolean", {
  --   fg = "#ff9e64",
  -- })

  -- hl("Float", {
  --   fg = "#ff9e64",
  -- })

  -- hl("Number", {
  --   fg = "#ff9e64",
  -- })

  -- hl("Constant", {
  --   fg = "#ff9e64",
  -- })

  -- hl("DiagnosticSignHint", {
  --   bg = "None",
  -- })

  -- hl("netrwDir", {
  --   fg = "#5eacd3",
  -- })
end

-- require("catppuccin").setup {
--   transparent_background = true,
--   term_colors = false,
--   compile = {
--     enabled = false,
--     path = vim.fn.stdpath "cache" .. "/catppuccin",
--   },
--   dim_inactive = {
--     enabled = false,
--     shade = "dark",
--     percentage = 0.15,
--   },
--   styles = {
--     comments = { "italic" },
--     conditionals = { "italic" },
--     loops = {},
--     functions = {},
--     keywords = {},
--     strings = {},
--     variables = {},
--     numbers = {},
--     booleans = {},
--     properties = {},
--     types = {},
--     operators = {},
--   },
--   integrations = {
--     -- For various plugins integrations see https://github.com/catppuccin/nvim#integrations
--   },
--   color_overrides = {},
--   highlight_overrides = {},
-- }
require("tokyonight").setup {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  style = "night", -- The theme comes in three styles, `storm`, a darker variant `night` and `day`
  transparent = false, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "transparent", -- style for sidebars, see below
    floats = "transparent", -- style for floating windows
  },
  sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  dim_inactive = false, -- dims inactive windows
  lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  ---@param colors ColorScheme
  on_colors = function(colors)
    -- colors.bg = "#181818"
    -- colors.bg_sidebar = "#202329"
    -- colors.comment = "#808080"
    -- colors.green = "#d0f7a6"
    -- colors.green1 = "#8fbcbb"
    -- colors.fg = "#d4d4d4"
    -- colors.border_highlight = "#d4d4d4"
  end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  ---@param highlights Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,
}
ColorMyPencils()

-- local colorscheme = "sherbet"
-- local colorscheme = "gruvbox"

-- nord

-- local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
-- if not status_ok then
-- vim.notify("colorscheme " .. colorscheme .. " not found!")
--   return
-- end
-- vim.cmd "hi NormalNC guibg=NONE"
-- vim.cmd "hi Normal guibg=NONE ctermbg=NONE"
-- vim.cmd "hi NvimTreeNormal guibg=none ctermbg=none"
-- vim.cmd "hi NvimTreeVertSplit guibg=none ctermbg=none"
-- vim.cmd "hi VertSplit guibg=none ctermbg=none"
-- vim.cmd "hi LineNr guibg=none ctermbg=none"
-- vim.cmd "hi Folded guibg=none ctermbg=none"
-- vim.cmd "hi NonText guibg=none ctermbg=none"
-- vim.cmd "hi SpecialKey guibg=none ctermbg=none"
-- vim.cmd "hi VertSplit guibg=none ctermbg=none"
-- -- vim.cmd "hi Pmenu guibg=none ctermbg=none"
-- vim.cmd "hi TelescopeNormal guibg=none ctermbg=none"
-- vim.cmd "hi MsgArea guibg=none ctermbg=none"
-- vim.cmd "hi SignColumn guibg=none ctermbg=none"
-- vim.cmd "hi EndOfBuffer guifg=none ctermbg=none"
-- vim.cmd "hi Normal guibg=NONE ctermbg=NONE"
-- -- vim.cmd "hi NormalFloat guibg=NONE ctermbg=NONE"
-- vim.cmd "hi LineNr guibg=NONE ctermbg=NONE"
-- vim.cmd "hi FloatBorder guibg=NONE ctermbg=NONE"
