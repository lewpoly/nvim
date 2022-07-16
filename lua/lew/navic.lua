local status_ok, navic = pcall(require, "nvim-navic")
if not status_ok then
  return
end

local icons = require "lew.icons"

navic.setup {
  icons = {
    File = " ",
    Module = " ",
    Namespace = " ",
    Package = " ",
    Class = " ",
    Method = " ",
    Property = " ",
    Field = " ",
    Constructor = " ",
    Enum = " ",
    Interface = " ",
    Function = " ",
    Variable = " ",
    Constant = " ",
    String = " ",
    Number = " ",
    Boolean = " ",
    Array = " ",
    Object = " ",
    Key = " ",
    Null = " ",
    EnumMember = " ",
    Struct = " ",
    Event = " ",
    Operator = " ",
    TypeParameter = " ",
  },
  highlight = true,
  separator = " " .. icons.ui.ChevronRight .. " ",
  depth_limit = 0,
  depth_limit_indicator = "..",
}

vim.api.nvim_set_hl(0, "NavicIconsFile", { fg = "#d4d4d4" })
vim.api.nvim_set_hl(0, "NavicIconsModule", { fg = "#c586c0" })
vim.api.nvim_set_hl(0, "NavicIconsNamespace", { fg = "#b5cea8" })
vim.api.nvim_set_hl(0, "NavicIconsPackage", { fg = "#9daac7" })
vim.api.nvim_set_hl(0, "NavicIconsClass", { fg = "#8fbcbb" })
vim.api.nvim_set_hl(0, "NavicIconsMethod", { fg = "#ebcb8b" })
vim.api.nvim_set_hl(0, "NavicIconsProperty", { fg = "#ebcb8b" })
vim.api.nvim_set_hl(0, "NavicIconsField", { fg = "#cccccc" })
vim.api.nvim_set_hl(0, "NavicIconsConstructor", { fg = "#8fbcbb" })
vim.api.nvim_set_hl(0, "NavicIconsEnum", { fg = "#e8ab53" })
vim.api.nvim_set_hl(0, "NavicIconsInterface", { fg = "#9cdcfe" })
vim.api.nvim_set_hl(0, "NavicIconsFunction", { fg = "#ebcb8b" })
vim.api.nvim_set_hl(0, "NavicIconsVariable", { fg = "#cccccc" })
vim.api.nvim_set_hl(0, "NavicIconsConstant", { fg = "#4fc1ff" })
vim.api.nvim_set_hl(0, "NavicIconsString", { fg = "#ce9178" })
vim.api.nvim_set_hl(0, "NavicIconsNumber", { fg = "#a3be8c" })
vim.api.nvim_set_hl(0, "NavicIconsBoolean", { fg = "#a3be8c" })
vim.api.nvim_set_hl(0, "NavicIconsArray", { fg = "#ebcb8b" })
vim.api.nvim_set_hl(0, "NavicIconsObject", { fg = "#75beff" })
vim.api.nvim_set_hl(0, "NavicIconsKey", { fg = "#9cdcfe" })
vim.api.nvim_set_hl(0, "NavicIconsNull", { fg = "#a3be8c" })
vim.api.nvim_set_hl(0, "NavicIconsEnumMember", { fg = "#9cdcfe" })
vim.api.nvim_set_hl(0, "NavicIconsStruct", { fg = "#9cdcfe" })
vim.api.nvim_set_hl(0, "NavicIconsEvent", { fg = "#c586c0" })
vim.api.nvim_set_hl(0, "NavicIconsOperator", { fg = "#9cdcfe" })
vim.api.nvim_set_hl(0, "NavicIconsTypeParameter", { fg = "#d4d4d4" })
-- vim.api.nvim_set_hl(0, "Winbar", { fg = "#6b737f" })

-- local icons = require "user.icons"
--
-- -- vim.api.nvim_set_hl(0, "WinBarSeparator", { fg = "#111fff" })
-- -- local fg = vim.api.nvim_get_hl_by_name('DiffAdd', 0).background
-- -- local bg = vim.api.nvim_get_hl_by_name('DiffAdd', 0).foreground
--
-- local space = ""
--
-- if vim.fn.has "mac" == 1 then
--   space = " "
-- end
--
-- vim.api.nvim_set_hl(0, "Winbar", { fg = "#6b737f" })
--
-- -- Customized config
-- gps.setup {
--
--   disable_icons = false, -- Setting it to true will disable all icons
--
--   icons = {
--     ["class-name"] = "%#CmpItemKindClass#" .. icons.kind.Class .. "%*" .. space, -- Classes and class-like objects
--     ["function-name"] = "%#CmpItemKindFunction#" .. icons.kind.Function .. "%*" .. space, -- Functions
--     ["method-name"] = "%#CmpItemKindMethod#" .. icons.kind.Method .. "%*" .. space, -- Methods (functions inside class-like objects)
--     ["container-name"] = "%#CmpItemKindProperty#" .. icons.type.Object .. "%*" .. space, -- Containers (example: lua tables)
--     ["tag-name"] = "%#CmpItemKindKeyword#" .. icons.misc.Tag .. "%*" .. " ", -- Tags (example: html tags)
--     ["mapping-name"] = "%#CmpItemKindProperty#" .. icons.type.Object .. "%*" .. space,
--     ["sequence-name"] = "%#CmpItemKindProperty#" .. icons.type.Array .. "%*" .. space,
--     ["null-name"] = "%#CmpItemKindField#" .. icons.kind.Field .. "%*" .. space,
--     ["boolean-name"] = "%#CmpItemKindValue#" .. icons.type.Boolean .. "%*" .. space,
--     ["integer-name"] = "%#CmpItemKindValue#" .. icons.type.Number .. "%*" .. space,
--     ["float-name"] = "%#CmpItemKindValue#" .. icons.type.Number .. "%*" .. space,
--     ["string-name"] = "%#CmpItemKindValue#" .. icons.type.String .. "%*" .. space,
--     ["array-name"] = "%#CmpItemKindProperty#" .. icons.type.Array .. "%*" .. space,
--     ["object-name"] = "%#CmpItemKindProperty#" .. icons.type.Object .. "%*" .. space,
--     ["number-name"] = "%#CmpItemKindValue#" .. icons.type.Number .. "%*" .. space,
--     ["table-name"] = "%#CmpItemKindProperty#" .. icons.ui.Table .. "%*" .. space,
--     ["date-name"] = "%#CmpItemKindValue#" .. icons.ui.Calendar .. "%*" .. space,
--     ["date-time-name"] = "%#CmpItemKindValue#" .. icons.ui.Table .. "%*" .. space,
--     ["inline-table-name"] = "%#CmpItemKindProperty#" .. icons.ui.Calendar .. "%*" .. space,
--     ["time-name"] = "%#CmpItemKindValue#" .. icons.misc.Watch .. "%*" .. space,
--     ["module-name"] = "%#CmpItemKindModule#" .. icons.kind.Module .. "%*" .. space,
--   },
--
--   -- Add custom configuration per language or
--   -- Disable the plugin for a language
--   -- Any language not disabled here is enabled by default
--   -- languages = {
--   -- 	-- Some languages have custom icons
--   -- 	["json"] = {
--   -- 		icons = {
--   -- 		}
--   -- 	},
--   -- 	["toml"] = {
--   -- 		icons = {
--   -- 		}
--   -- 	},
--   -- 	["verilog"] = {
--   -- 		icons = {
--   -- 		}
--   -- 	},
--   -- 	["yaml"] = {
--   -- 		icons = {
--   -- 		}
--   -- 	},
--
--   -- Disable for particular languages
--   -- ["bash"] = false, -- disables nvim-gps for bash
--   -- ["go"] = false,   -- disables nvim-gps for golang
--
--   -- Override default setting for particular languages
--   -- ["ruby"] = {
--   --	separator = '|', -- Overrides default separator with '|'
--   --	icons = {
--   --		-- Default icons not specified in the lang config
--   --		-- will fallback to the default value
--   --		-- "container-name" will fallback to default because it's not set
--   --		["function-name"] = '',    -- to ensure empty values, set an empty string
--   --		["tag-name"] = ''
--   --		["class-name"] = '::',
--   --		["method-name"] = '#',
--   --	}
--   --}
--   -- },
--
--   separator = " " .. icons.ui.ChevronRight .. " ",
--
--   -- limit for amount of context shown
--   -- 0 means no limit
--   -- Note: to make use of depth feature properly, make sure your separator isn't something that can appear
--   -- in context names (eg: function names, class names, etc)
--   depth = 0,
--
--   -- indicator used when context is hits depth limit
--   depth_limit_indicator = "..",
--   text_hl = "Winbar",
-- }
