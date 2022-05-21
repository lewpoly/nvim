local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
  return
end

-- local status_gps_ok, gps = pcall(require, "nvim-gps")
-- if not status_gps_ok then
-- 	return
-- end

local hide_in_width = function()
  return vim.fn.winwidth(0) > 80
end

local diagnostics = {
  "diagnostics",
  sources = { "nvim_diagnostic" },
  sections = { "error", "warn" },
  symbols = { error = " ", warn = " " },
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

local mode = {
  "mode",
  fmt = function(str)
    return "-- " .. str .. " --"
  end,
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
  padding = 0,
}

local progress = {
  "progress",
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
    lualine_a = { branch, diagnostics },
    lualine_b = {},
    -- lualine_b = {
    -- 	{ nvim_gps, cond = hide_in_width },
    -- },
    lualine_c = {
      {
        function()
          local fg = "#228b22" -- not modified
          if vim.bo.modified then
            fg = "#c70039" -- unsaved
          elseif not vim.bo.modifiable then
            fg = "#a70089"
          end -- readonly
          vim.cmd("hi! lualine_filename_status guifg=" .. fg)
          -- return "%t %m"
          return "%m"
        end,
        -- color = "lualine_filename_status",
      },
    },
    -- lualine_x = { "encoding", "fileformat", "filetype" },
    lualine_x = {},
    lualine_y = {},
    lualine_z = { diff, filetype, location, progress },
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
