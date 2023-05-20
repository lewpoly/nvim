local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
  return
end

-- local status_theme_ok, theme = pcall(require, "lualine.themes.nordic")
-- if not status_theme_ok then
--   return
-- end

local function contains(t, value)
  for _, v in pairs(t) do
    if v == value then
      return true
    end
  end
  return false
end

local hl_str = function(str, hl)
  return "%#" .. hl .. "#" .. str .. "%*"
end

vim.api.nvim_set_hl(0, "SLGitIcon", { fg = "#838994", bg = "#252829" })
vim.api.nvim_set_hl(0, "SLBranchName", { fg = "#838994", bg = "#252829", bold = false })
vim.api.nvim_set_hl(0, "SLProgress", { fg = "#838994", bg = "#252829" })
vim.api.nvim_set_hl(0, "SLSeparator", { fg = "#838994", bg = "#252829" })
-- vim.api.nvim_set_hl(0, "SLLSP", { fg = "#8fbcbb", bg = "#1e2027" })
-- vim.api.nvim_set_hl(0, "SLCopilot", { fg = "#6CC644", bg = "#1e2027" })
-- local mode_color = {
--   -- n = "#519fdf",
--   n = "#8fbcbb",
--   -- i = "#d05c65",
--   i = "#ce9178",
--   -- v = "#b668cd",
--   -- [""] = "#b668cd",
--   -- V = "#b668cd",
--   v = "#a3ba8c",
--   [""] = "#a3ba8c",
--   V = "#a3ba8c",
--   -- c = '#B5CEA8',
--   -- c = '#D7BA7D',
--   -- c = "#46a6b2",
--   c = "#d4d4d4",
--   no = "#519fdf",
--   s = "#c18a56",
--   S = "#c18a56",
--   [""] = "#c18a56",
--   ic = "#d05c65",
--   R = "#d05c65",
--   Rv = "#d05c65",
--   cv = "#519fdf",
--   ce = "#519fdf",
--   r = "#d05c65",
--   rm = "#46a6b2",
--   ["r?"] = "#46a6b2",
--   ["!"] = "#46a6b2",
--   t = "#88b369",
-- }

local mode = {
  -- mode component
  function()
    -- return "▊"
    return "  "
    -- return "  "
    -- return "  "
  end,
  color = function()
    -- auto change color according to neovims mode
    -- return { bg = mode_color[vim.fn.mode()], fg = "#0d1117" }
  end,
  -- padding = { right = 1 },
  padding = 0,
}

local hide_in_width_60 = function()
  return vim.o.columns > 60
end

local hide_in_width = function()
  return vim.o.columns > 80
end

local hide_in_width_100 = function()
  return vim.o.columns > 100
end

local icons = require "lew.icons"

local diagnostics = {
  "diagnostics",
  sources = { "nvim_diagnostic" },
  sections = { "error", "warn", "hint" },
  symbols = {
    error = icons.diagnostics.Error .. " ",
    warn = icons.diagnostics.Warning .. " ",
    hint = icons.diagnostics.Hint .. " ",
  },
  colored = true,
  update_in_insert = false,
  always_visible = true,
}

local diff = {
  "diff",
  colored = false,
  symbols = { added = icons.git.Add .. " ", modified = icons.git.Mod .. " ", removed = icons.git.Remove .. " " }, -- changes diff symbols
  cond = hide_in_width_60,
  separator = "%#SLSeparator#" .. "│ " .. "%*",
}

-- local mode = {
--   "mode",
--   fmt = function(str)
--     return "-- " .. str .. " --"
--   end,
-- }

local filetype = {
  "filetype",
  fmt = function(str)
    local ui_filetypes = {
      "help",
      "packer",
      "neogitstatus",
      "NvimTree",
      "Trouble",
      "lir",
      "Outline",
      "spectre_panel",
      "toggleterm",
      "DressingSelect",
      "",
    }

    -- if str == "toggleterm" then
    --   local term = " " .. vim.api.nvim_buf_get_var(0, "toggle_number")
    --   return term
    -- end

    if contains(ui_filetypes, str) then
      return ""
    else
      return str
    end
  end,
  icons_enabled = false,
}

local branch = {
  "branch",
  icons_enabled = true,
  icon = "%#SLGitIcon#" .. "" .. "%*" .. "%#SLBranchName#",
  -- color = "Constant",
  colored = false,
}

local progress = {
  "progress",
  fmt = function(str)
    -- return "▊"
    return hl_str(" %P/%L ", "SLProgress")
    -- return "  "
  end,
  -- color = "SLProgress",
  padding = 0,
}

-- local current_signature = {
--   function()
--     local buf_ft = vim.bo.filetype
--
--     if buf_ft == "toggleterm" then
--       return ""
--     end
--     if not pcall(require, "lsp_signature") then
--       return ""
--     end
--     local sig = require("lsp_signature").status_line(30)
--     return "%#SLSeparator#" .. sig.hint .. "%*"
--   end,
--   cond = hide_in_width_100,
--   padding = 0,
-- }

-- cool function for progress
-- local progress = function()
--   local current_line = vim.fn.line "."
--   local total_lines = vim.fn.line "$"
--   local chars = { "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }
--   local line_ratio = current_line / total_lines
--   local index = math.ceil(line_ratio * #chars)
--   -- return chars[index]
--   return "%#SLProgress#" .. chars[index] .. "%*"
-- end

local spaces = {
  function()
    local buf_ft = vim.bo.filetype

    local ui_filetypes = {
      "help",
      "packer",
      "neogitstatus",
      "NvimTree",
      "Trouble",
      "lir",
      "Outline",
      "spectre_panel",
      "DressingSelect",
      "",
    }
    local space = ""

    if contains(ui_filetypes, buf_ft) then
      space = " "
    end

    -- TODO: update codicons and use their indent
    return "  " .. vim.api.nvim_buf_get_option(0, "shiftwidth") .. space
  end,
  padding = 0,
  separator = "%#SLSeparator#" .. " │" .. "%*",
  cond = hide_in_width_100,
}

local lanuage_server = {
  function()
    local buf_ft = vim.bo.filetype
    local ui_filetypes = {
      "help",
      "packer",
      "neogitstatus",
      "NvimTree",
      "Trouble",
      "lir",
      "Outline",
      "spectre_panel",
      -- "toggleterm",
      "DressingSelect",
      "",
    }

    if contains(ui_filetypes, buf_ft) then
      return M.language_servers
    end

    local clients = vim.lsp.buf_get_clients()
    local client_names = {}
    local copilot_active = false

    -- add client
    for _, client in pairs(clients) do
      if client.name ~= "copilot" and client.name ~= "null-ls" then
        table.insert(client_names, client.name)
      end
      if client.name == "copilot" then
        copilot_active = true
      end
    end

    -- add formatter
    local s = require "null-ls.sources"
    local available_sources = s.get_available(buf_ft)
    local registered = {}
    for _, source in ipairs(available_sources) do
      for method in pairs(source.methods) do
        registered[method] = registered[method] or {}
        table.insert(registered[method], source.name)
      end
    end

    local formatter = registered["NULL_LS_FORMATTING"]
    local linter = registered["NULL_LS_DIAGNOSTICS"]
    if formatter ~= nil then
      vim.list_extend(client_names, formatter)
    end
    if linter ~= nil then
      vim.list_extend(client_names, linter)
    end

    -- join client names with commas
    local client_names_str = table.concat(client_names, ", ")

    -- check client_names_str if empty
    local language_servers = ""
    local client_names_str_len = #client_names_str
    if client_names_str_len ~= 0 then
      language_servers = "%#SLLSP#" .. "[" .. client_names_str .. "]" .. "%*"
    end
    if copilot_active then
      language_servers = language_servers .. "%#SLCopilot#" .. " " .. icons.git.Octoface .. "%*"
    end

    if client_names_str_len == 0 and not copilot_active then
      return ""
    else
      M.language_servers = language_servers
      return language_servers:gsub(", anonymous source", "")
    end
  end,
  padding = 0,
  cond = hide_in_width,
  separator = "%#SLSeparator#" .. " │" .. "%*",
}

local location = {
  "location",
  color = function()
    -- darkerplus
    -- return { fg = "#252525", bg = mode_color[vim.fn.mode()] }
    -- return { fg = "#1E232A", bg = mode_color[vim.fn.mode()] }
  end,
}

local filename = {
  "filename",
  path = 1,
  shorting_target = 40,
  symbols = {
    modified = " [+]",
    readonly = "",
    unnamed = "",
  },
}

local colors = {
  bg = "#252829",
  fg = "#838994",
}

lualine.setup {
  options = {
    globalstatus = true,
    icons_enabled = true,
    -- theme = "auto",
    theme = {
      normal = {
        a = { fg = colors.fg, bg = colors.bg },
        b = { fg = colors.fg, bg = colors.bg },
        c = { fg = colors.fg, bg = colors.bg },
      },
      insert = { a = { fg = colors.fg, bg = colors.bg }, b = { fg = colors.fg, bg = colors.bg } },
      visual = { a = { fg = colors.fg, bg = colors.bg }, b = { fg = colors.fg, bg = colors.bg } },
      command = { a = { fg = colors.fg, bg = colors.bg }, b = { fg = colors.fg, bg = colors.bg } },
      replace = { a = { fg = colors.fg, bg = colors.bg }, b = { fg = colors.fg, bg = colors.bg } },

      inactive = {
        a = { fg = colors.fg, bg = colors.bg },
        b = { fg = colors.fg, bg = colors.bg },
        c = { fg = colors.fg, bg = colors.bg },
      },
    },
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = { "alpha", "dashboard" },
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { filename, branch, diagnostics },
    -- lualine_x = { diff, spaces, "encoding", filetype },
    lualine_x = { spaces, filetype },
    lualine_y = { progress },
    lualine_z = { location },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = {},
}
