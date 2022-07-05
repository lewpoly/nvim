-- vim.g.transparent_background = true
local colorscheme = "sherbet"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
-- vim.cmd("hi NormalNC guibg=NONE")
-- vim.cmd("hi Normal guibg=none ctermbg=none")
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
