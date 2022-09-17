vim.g.lualew_colorscheme = "sherbet"

function ColorMyPencils()
  vim.g.sherbet_italic_comments = true
  vim.g.tokyonight_transparent_sidebar = true
  vim.g.tokyonight_transparent = true
  vim.g.nord_contrast = true
  vim.g.nord_borders = true
  vim.g.gruvbox_contrast_dark = "hard"
  vim.g.gruvbox_invert_selection = "0"
  vim.opt.background = "dark"

  vim.cmd("colorscheme " .. vim.g.lualew_colorscheme)

  local hl = function(thing, opts)
    vim.api.nvim_set_hl(0, thing, opts)
  end

  -- hl("SignColumn", {
  --   bg = "none",
  -- })

  hl("ColorColumn", {
    ctermbg = 0,
    bg = "#555555",
  })

  -- hl("CursorLineNR", {
  --   bg = "None",
  -- })

  -- hl("Normal", {
  --   bg = "none",
  -- })

  -- hl("LineNr", {
  --   fg = "#5eacd3",
  -- })

  -- hl("netrwDir", {
  --   fg = "#5eacd3",
  -- })
  -- hl("NvimTreeNormal", {
  --   bg = "None",
  -- })
  -- hl("NvimTreeVertSplit", {
  --   bg = "None",
  -- })
-- vim.cmd("hi NvimTreeVertSplit guibg=none ctermbg=none")
end
ColorMyPencils()

-- local colorscheme = "sherbet"
-- local colorscheme = "gruvbox"

-- vim.g.transparent_background = true

-- vim.g.sherbet_italic_keywords = true
--
-- vim.g.sherbet_italic_functions = false
--
-- vim.g.sherbet_italic_comments = true
--
-- vim.g.sherbet_italic_loops = true
--
-- vim.g.sherbet_italic_conditionals = true

-- nord

-- local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
-- if not status_ok then
  -- vim.notify("colorscheme " .. colorscheme .. " not found!")
--   return
-- end
-- vim.cmd("hi NormalNC guibg=NONE")
-- vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
-- vim.cmd("hi NvimTreeNormal guibg=none ctermbg=none")
-- vim.cmd("hi NvimTreeVertSplit guibg=none ctermbg=none")
-- vim.cmd("hi VertSplit ctermfg=1 guibg=none ctermbg=none")
-- vim.cmd("hi LineNr guibg=none ctermbg=none")
-- vim.cmd("hi Folded guibg=none ctermbg=none")
-- vim.cmd("hi NonText guibg=none ctermbg=none")
-- vim.cmd("hi SpecialKey guibg=none ctermbg=none")
-- -- vim.cmd("hi VertSplit guibg=none ctermbg=none")
-- vim.cmd("hi SignColumn guibg=none ctermbg=none")
-- vim.cmd("hi StatusLine guibg=none ctermbg=none")
-- vim.cmd("hi EndOfBuffer guibg=none ctermbg=none")
-- vim.cmd "hi Normal guibg=NONE ctermbg=NONE"
-- vim.cmd "hi LineNr guibg=NONE ctermbg=NONE"
