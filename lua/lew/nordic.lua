-- Initial setup.
require("nordic").setup {
  bright_border = true,
  telescope = {
    style = "flat",
  },
  bold_keywords = false,
  italic_comments = true,
  transparent_bg = false,
  cursorline = {
    theme = "dark",
    bold = false,
  },
  noice = {
    style = "classic",
  },
}

-- Overrides.
local p = require "nordic.colors"
local override = {
  PopupNormal = {
    bg = p.bg_dark,
  },
  PopupBorder = {
    bg = p.bg_dark,
    fg = p.grey1,
  },
  Pmenu = {
    link = "PopupNormal",
  },
  PmenuSel = {
    bg = p.grey1,
    bold = true,
  },
  PmenuBorder = {
    link = "PopupBorder",
  },
  PmenuDocBorder = {
    bg = p.bg_dark,
    fg = p.grey1,
  },
  NormalFloat = {
    bg = p.bg_dark,
  },
  FloatBorder = {
    bg = p.grey1,
    fg = "NONE"
  },
  TelescopeBorder = {
    fg = p.grey1,
    bg = p.bg_dark,
  },
  TelescopePromptNormal = {
    bg = p.grey1,
  },
  TelescopePromptBorder = {
    fg = p.grey1,
    bg = p.grey1,
  },
  TelescopeResultsBorder = {
    fg = p.grey1,
    bg = p.bg_dark,
  },
  TelescopePreviewBorder = {
    fg = p.grey1,
    bg = p.bg_dark,
  },
  Visual = {
    bg = p.gray2,
  },
  Comment = {
    fg = p.gray5,
  },
  NvimTreeOpenedFile = {
    bg = "NONE",
  },
  NvimTreeEndOfBuffer = {
    fg = p.bg_dark,
    bg = "NONE",
  },
  NoiceCmdlineIcon = {
    bg = p.bg_dark,
  },
  NoiceCmdlinePopupBorder = {
    fg = p.cyan.base,
  },
  SagaBorder = {
    bg = p.bg_dark,
    fg = p.grey1,
  },
  SagaNormal = {
    bg = p.bg_dark,
  },
  Winbar = {
    bg = "NONE",
    fg = p.white0,
  },
  WinbarNC = {
    bg = "NONE",
    fg = p.fg,
  },
  NavicText = {
    bg = "NONE",
    fg = p.white0,
  },
  NavicTextNC = {
    bg = "NONE",
    fg = p.fg,
  },
  PmenuSbar = {
    fg = "NONE",
    bg = p.gray5,
  }
}

require("nordic").setup {
  override = override,
}

-- Load the scheme.
vim.cmd.colorscheme "nordic"

vim.cmd([[highlight DiagnosticShowBorder guibg=]] .. p.bg_dark .. " guifg=" .. p.grey1)
vim.cmd([[highlight SagaNormal guibg=]] .. p.bg_dark)
