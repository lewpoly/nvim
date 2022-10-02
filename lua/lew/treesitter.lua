local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
  ignore_install = { "" }, -- List of parsers to ignore installing
  matchup = {
    enable = true, -- mandatory, false will disable the whole extension
    -- disable = { "c", "ruby" }, -- optional, list of language that will be disabled
    -- disable_virtual_text = false,
    -- include_match_words = false
  },
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "css" }, -- list of language that will be disabled
    -- additional_vim_regex_highlighting = true,
  },
  autopairs = {
    enable = true,
  },
  indent = { enable = true, disable = { "css", "python" } },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  autotag = {
    enable = true,
    disable = { "xml" },
  },
  rainbow = {
    enable = true,
    extended_mode = false, -- Highlight also non-parentheses delimiters, boolean or table
    colors = {
      "#68a0b0",
      "#946EaD",
      "#c7aA6D",
      -- "#dcd7ba",
      -- "#d16969",
      -- "#a3be8c",
      -- "Gold",
      -- "Orchid",
      -- "DodgerBlue",
      -- 	"Cornsilk",
      -- 	"Salmon",
      -- 	"LawnGreen",
    },
  },
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false, -- Whether the query persists across vim sessions
    keybindings = {
      toggle_query_editor = "o",
      toggle_hl_groups = "i",
      toggle_injected_languages = "t",
      toggle_anonymous_nodes = "a",
      toggle_language_display = "I",
      focus_language = "f",
      unfocus_language = "F",
      update = "R",
      goto_node = "<cr>",
      show_help = "?",
    },
  },
}
local ft_to_parser = require("nvim-treesitter.parsers").filetype_to_parsername
ft_to_parser.ejs = "html"
