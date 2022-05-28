local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
  return
end

-- local status_gps_ok, gps = pcall(require, "nvim-gps")
-- if not status_gps_ok then
-- 	return
-- end

vim.api.nvim_set_hl(0, "SLGitIcon", { fg = "#E8AB53", bg = "#13151b" })
vim.api.nvim_set_hl(0, "SLBranchName", { fg = "#D4D4D4", bg = "#13151b", bold = false })
-- vim.api.nvim_set_hl(0, "SLProgress", { fg = "#D7BA7D", bg = "#13151b" })
vim.api.nvim_set_hl(0, "SLProgress", { fg = "#D4D4D4", bg = "#13151b" })
vim.api.nvim_set_hl(0, "SLSeparator", { fg = "#808080", bg = "#13151b" })

local mode_color = {
  n = "#808080",
  i = "#458588",
  v = "#ce9178",
  [""] = "#ce9178",
  V = "#ce9178",
  -- c = '#B5CEA8',
  -- c = '#D7BA7D',
  c = "#ebcb8b",
  no = "#569cd6",
  s = "#ce9178",
  S = "#ce9178",
  [""] = "#ce9178",
  ic = "#dcdcaa",
  R = "#d16969",
  Rv = "#d16969",
  cv = "#569cd6",
  ce = "#569cd6",
  r = "#d16969",
  rm = "#4EC9B0",
  ["r?"] = "#4EC9B0",
  ["!"] = "#4EC9B0",
  t = "#D7BA7D",
}

local hide_in_width = function()
  return vim.fn.winwidth(0) > 80
end

local diagnostics = {
  "diagnostics",
  sources = { "nvim_diagnostic" },
  sections = { "error", "warn" },
  symbols = { error = " ", warn = " " },
  colored = false,
  update_in_insert = true,
  always_visible = true,
}

local diff = {
  "diff",
  colored = false,
  symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
  cond = hide_in_width,
}

-- local mode = {
--   "mode",
--   fmt = function(str)
--     return "-- " .. str .. " --"
--   end,
-- }

local mode = {
  -- mode component
  function()
    return "▊"
  end,
  color = function()
    -- auto change color according to neovims mode
    return { fg = mode_color[vim.fn.mode()] }
  end,
  -- padding = { right = 1 },
  padding = 0,
}

local filetype = {
  "filetype",
  icons_enabled = true,
  icon = nil,
}

local branch = {
  "branch",
  icons_enabled = true,
  icon = "",
}

local location = {
  "location",
  padding = 1,
}

local progress = {
  "progress",
  color = function()
    return { fg = "#13151b", bg = mode_color[vim.fn.mode()] }
  end,
  padding = 1,
}

local filename = {
  "filename",
  path = 1,
  shorting_target = 40,
  symbols = {
    modified = "",
    readonly = "",
    unnamed = "[No Name]",
  },
}

-- local nvim_gps = function()
-- 	local gps_location = gps.get_location()
-- 	if gps_location == "error" then
-- 		return ""
-- 	else
-- 		return gps.get_location()
-- 	end
-- end

lualine.setup {
  options = {
    icons_enabled = true,
    theme = "auto",
    component_separators = "  ",
    section_separators = { left = "", right = "" },
    disabled_filetypes = { "alpha", "dashboard", "Outline" },
    always_divide_middle = true,
    globalstatus = true,
  },
  sections = {
    lualine_a = { mode },
    lualine_b = { branch, diagnostics },
    -- lualine_b = {
    -- 	{ nvim_gps, cond = hide_in_width },
    -- },
    lualine_c = {},
    -- lualine_x = { "encoding", "fileformat", "filetype" },
    lualine_x = {},
    lualine_y = { diff, filetype, location, progress },
    lualine_z = {},
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = {},
}
