local u = require "lew.borders"

----------------------
-- Find and Replace --
----------------------

-- Allow FAR to undo.
vim.cmd "let g:far#enable_undo=1"

----------------
-- Auto pairs --
----------------

require("nvim-autopairs").setup {
  map_cr = false,
}

----------
-- Leap --
----------

local leap = require "leap"
leap.setup {}
leap.set_default_keymaps(true)

----------------
-- Illuminate --
----------------

require("illuminate").configure {
  under_cursor = false,
  delay = 500,
  filetypes_denylist = {
    "startify",
    "NvimTree",
  },
}

-----------------
-- Indentation --
-----------------

require("indent_blankline").setup {
  show_end_of_line = true,
  show_current_context = true,
  show_current_context_start = false,
  filetype_exclude = { "NvimTree", "startify", "dashboard", "Alpha" },
  use_treesitter = false,
  use_treesitter_scope = false,
  context_char = "│",
  char = "┆",
}

---------------------
-- Setup which-key --
---------------------

require("which-key").setup {}

-- Timeout.
vim.cmd "set timeoutlen =1000"

---------------------------------
-- Setup default notifications --
---------------------------------

local notify = require "notify"
notify.setup {
  fps = 60,
  level = "ERROR",
}
vim.notify = notify

-----------
-- Noice --
-----------

require("noice").setup {
  cmdline = {
    format = {
      cmdline = { title = "", icon = "  " },
      lua = { title = "", icon = " 󰢱 " },
      help = { title = "", icon = " 󰋖 " },
      input = { title = "" },
    },
  },
  views = {
    cmdline_popup = {
      border = {
        style = u.border_chars_outer_thin,
        padding = { 0, 1 },
      },
      win_options = {
        winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
      },
    },
  },
  lsp = {
    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true,
    },
  },
  -- you can enable a preset for easier configuration
  presets = {
    bottom_search = true, -- use a classic bottom cmdline for search
    command_palette = true, -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = false, -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = false, -- add a border to hover docs and signature help
  },
}

---------------
-- Colorizer --
---------------

require("colorizer").setup {
  user_default_options = {
    mode = "virtualtext",
    RRGGBB = true,
    RRGGBBAA = true,
    names = false,
    RGB = false,
    virtualtext = " ",
  },
}
