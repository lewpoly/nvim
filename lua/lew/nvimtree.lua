-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end

local tree_cb = nvim_tree_config.nvim_tree_callback
local icons = require "lew.icons"

nvim_tree.setup {
  auto_reload_on_write = true,
  create_in_closed_folder = false,
  disable_netrw = false,
  hijack_cursor = false,
  hijack_netrw = true,
  hijack_unnamed_buffer_when_opening = false,
  ignore_buffer_on_setup = false,
  open_on_setup = false,
  open_on_setup_file = false,
  open_on_tab = false,
  sort_by = "name",
  root_dirs = {},
  prefer_startup_root = false,
  update_cwd = true,
  reload_on_bufenter = false,
  respect_buf_cwd = false,
  renderer = {
    add_trailing = false,
    group_empty = false,
    highlight_git = false,
    highlight_opened_files = "all", -- can be name, icon, none, or all.
    root_folder_modifier = ":~:s?$?/..?",
    indent_width = 1,
    indent_markers = {
      enable = false,
      icons = {
        corner = "└",
        edge = "│",
        item = "│",
        none = "  ",
      },
    },
    icons = {
      webdev_colors = true,
      git_placement = "after",
      padding = " ",
      symlink_arrow = " ➛ ",
      show = {
        file = true,
        folder = false,
        folder_arrow = true,
        git = true,
      },
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          -- arrow_closed = "",
          -- arrow_open = "",
          arrow_closed = icons.ui.ArrowClosed,
          arrow_open = icons.ui.ArrowOpen,
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "",
          staged = "S",
          unmerged = "",
          renamed = "➜",
          untracked = "U",
          deleted = "",
          ignored = "◌",
        },
      },
    },
    special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
    update_root = false,
    ignore_list = {},
  },
  ignore_ft_on_setup = {
    "startify",
    "dashboard",
    "alpha",
  },
  filters = {
    custom = { ".git" },
    -- exclude = { ".gitignore" },
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = icons.diagnostics.Hint,
      info = icons.diagnostics.Information,
      warning = icons.diagnostics.Warning,
      error = icons.diagnostics.Error,
    },
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 50,
  },
  view = {
    width = 30,
    hide_root_folder = false,
    side = "left",
    mappings = {
      custom_only = false,
      list = {
        { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
        { key = "h", cb = tree_cb "close_node" },
        { key = "v", cb = tree_cb "vsplit" },
      },
    },
    number = false,
    relativenumber = false,
  },
}
