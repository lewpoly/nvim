local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

-- local h_status_ok, harpoon = pcall(require, "harpoon")
-- if not h_status_ok then
--   return
-- end

local actions = require "telescope.actions"
telescope.load_extension "media_files"
-- telescope.load_extension "harpoon"
local icons = require "lew.icons"
local u = require "lew.borders"

telescope.setup {
  defaults = {
    -- prompt_prefix = " ",
    -- prompt_prefix = icons.ui.Telescope .. " ",
    -- selection_caret = " ",
    -- selection_caret = icons.ui.ChevronRight .. " ",
    -- path_display = { "smart" },
    sort_mru = true,
    sorting_strategy = "ascending",
    layout_config = {
      prompt_position = "top",
    },
    borderchars = {
      prompt = u.border_chars_outer_thin_telescope,
      results = u.border_chars_outer_thin_telescope,
      preview = u.border_chars_outer_thin_telescope,
    },
    border = true,
    multi_icon = "",
    entry_prefix = "   ",
    prompt_prefix = "   ",
    selection_caret = "  ",
    hl_result_eol = true,
    results_title = "",
    winblend = 0,
    mappings = {
      i = {
        ["<C-j>"] = require("telescope.actions").move_selection_next,
        ["<C-k>"] = require("telescope.actions").move_selection_previous,
        ["<S-Tab>"] = actions.move_selection_previous,
        ["<Tab>"] = actions.move_selection_next,

        ["<C-c>"] = actions.close,

        -- ["<Down>"] = actions.move_selection_next,
        -- ["<Up>"] = actions.move_selection_previous,

        ["<CR>"] = actions.select_default,
        ["<C-s>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
        ["<C-t>"] = actions.select_tab,

        ["<c-d>"] = actions.delete_buffer,

        -- ["<C-u>"] = actions.preview_scrolling_up,
        -- ["<C-d>"] = actions.preview_scrolling_down,

        ["<PageUp>"] = actions.results_scrolling_up,
        ["<PageDown>"] = actions.results_scrolling_down,

        -- ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
        -- ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
        ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
        ["<C-l>"] = actions.complete_tag,
        ["<C-_>"] = actions.which_key, -- keys from pressing <C-/>
      },

      n = {
        ["<esc>"] = actions.close,
        ["<CR>"] = actions.select_default,
        ["<C-x>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
        ["<C-t>"] = actions.select_tab,
        ["<c-d>"] = require("telescope.actions").delete_buffer,

        ["<Tab>"] = actions.move_selection_next,
        ["<S-Tab>"] = actions.move_selection_previous,
        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
        ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,

        ["j"] = actions.move_selection_next,
        ["k"] = actions.move_selection_previous,
        ["H"] = actions.move_to_top,
        ["M"] = actions.move_to_middle,
        ["L"] = actions.move_to_bottom,

        ["<Down>"] = actions.move_selection_next,
        ["<Up>"] = actions.move_selection_previous,
        ["gg"] = actions.move_to_top,
        ["G"] = actions.move_to_bottom,

        -- ["<C-u>"] = actions.preview_scrolling_up,
        -- ["<C-d>"] = actions.preview_scrolling_down,

        ["<PageUp>"] = actions.results_scrolling_up,
        ["<PageDown>"] = actions.results_scrolling_down,

        ["?"] = actions.which_key,
      },
    },
  },
  pickers = {
    -- live_grep = {
    --   theme = "ivy",
    -- },
    --   grep_string = {
    --     theme = "ivy",
    --   },
    --   find_files = {
    --     theme = "ivy",
    --     previewer = false,
    --     border = true,
    --   },
    buffers = {
      theme = "dropdown",
      initial_mode = "normal",
      previewer = false,
      borderchars = {
        prompt = u.border_chars_outer_thin_telescope,
        results = u.border_chars_outer_thin_telescope,
        preview = u.border_chars_outer_thin_telescope,
      },
    },
    colorscheme = {
      theme = "dropdown",
      initial_mode = "insert",
      previewer = false,
      borderchars = {
        prompt = u.border_chars_outer_thin_telescope,
        results = u.border_chars_outer_thin_telescope,
        preview = u.border_chars_outer_thin_telescope,
      },
    },
    -- colorscheme = {
    --   theme = "dropdown",
    --   initial_mode = "insert",
    --   previewer = false,
    --   borderchars = {
    --     prompt = u.border_chars_outer_thin_telescope,
    --     results = u.border_chars_outer_thin_telescope,
    --     preview = u.border_chars_outer_thin_telescope,
    --   },
    },
    --   planets = {
    --     show_pluto = true,
    --     show_moon = true,
    --   },
    --   lsp_references = {
    --     theme = "dropdown",
    --     initial_mode = "normal",
    --   },
    --   lsp_definitions = {
    --     theme = "dropdown",
    --     initial_mode = "normal",
    --   },
    --   lsp_declarations = {
    --     theme = "dropdown",
    --     initial_mode = "normal",
    --   },
    --   lsp_implementations = {
    --     theme = "dropdown",
    --     initial_mode = "normal",
    --   },
    --   diagnostics = {
    --     theme = "ivy",
    --     initial_mode = "normal",
    --   },
  file_ignore_patterns = {
    ".git/",
    "target/",
    "docs/",
    "vendor/*",
    "%.lock",
    "__pycache__/*",
    "%.sqlite3",
    "%.ipynb",
    "node_modules/*",
    -- "%.jpg",
    -- "%.jpeg",
    -- "%.png",
    "%.svg",
    "%.otf",
    "%.ttf",
    -- "%.webp",
    ".dart_tool/",
    ".github/",
    ".gradle/",
    ".idea/",
    ".settings/",
    ".vscode/",
    "__pycache__/",
    "build/",
    "env/",
    "gradle/",
    "node_modules/",
    "%.pdb",
    "%.dll",
    "%.class",
    "%.exe",
    "%.cache",
    "%.ico",
    "%.pdf",
    "%.dylib",
    "%.jar",
    "%.docx",
    "%.met",
    "smalljre_*/*",
    ".vale/",
    "%.burp",
    "%.mp4",
    "%.mkv",
    "%.rar",
    "%.zip",
    "%.7z",
    "%.tar",
    "%.bz2",
    "%.epub",
    "%.flac",
    "%.tar.gz",
  },
}

require("telescope").load_extension "ui-select"
require("telescope").load_extension "notify"
require("telescope").load_extension "fzf"
-- telescope.load_extension "file_browser"
-- require("telescope.builtin").lsp_code_actions(require("telescope.themes").get_cursor())
