local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
  return
end

local servers = {
  "cssls",
  "cssmodules_ls",
  "emmet_ls",
  "html",
  "clangd",
  "jsonls",
  "yamlls",
  "sumneko_lua",
  "tsserver",
  "terraformls",
  "solargraph",
  "pyright",
  "bashls",
  "rust_analyzer",
  "taplo",
  "zk@v0.10.1",
}

local u = require "lew.borders"

local settings = {
  ensure_installed = servers,
  -- automatic_installation = false,
  ui = {
    -- border = u.border_chars_outer_thin,
    border = "rounded",
    -- winhighlight = "NormalFloat:Pmenu,FloatBorder:PmenuBorder,CursorLine:PmenuSel,Search:None",
    icons = {
      -- server_installed = "◍",
      -- server_pending = "◍",
      -- server_uninstalled = "◍",
      -- server_installed = "✓",
      -- server_pending = "➜",
      -- server_uninstalled = "✗",
    },
    keymaps = {
      toggle_server_expand = "<CR>",
      install_server = "i",
      update_server = "u",
      check_server_version = "c",
      update_all_servers = "U",
      check_outdated_servers = "C",
      uninstall_server = "X",
    },
  },

  log_level = vim.log.levels.INFO,
  -- max_concurrent_installers = 4,
  -- install_root_dir = path.concat { vim.fn.stdpath "data", "lsp_servers" },
}

lsp_installer.setup(settings)

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  return
end

local opts = {}

for _, server in pairs(servers) do
  opts = {
    on_attach = require("lew.lsp.handlers").on_attach,
    capabilities = require("lew.lsp.handlers").capabilities,
  }

  server = vim.split(server, "@")[1]

  if server == "jsonls" then
    local jsonls_opts = require "lew.lsp.settings.jsonls"
    opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
  end

  if server == "tsserver" then
    local tsserver_opts = require "lew.lsp.settings.typescript"
    opts = vim.tbl_deep_extend("force", tsserver_opts, opts)
  end

  if server == "sumneko_lua" then
    local sumneko_opts = require "lew.lsp.settings.sumneko_lua"
    opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
  end

  if server == "pyright" then
    local pyright_opts = require "lew.lsp.settings.pyright"
    opts = vim.tbl_deep_extend("force", pyright_opts, opts)
  end

  if server == "emmet_ls" then
    local emmet_ls_opts = require "lew.lsp.settings.emmet_ls"
    opts = vim.tbl_deep_extend("force", emmet_ls_opts, opts)
  end

  if server == "solargraph" then
    local solargraph_opts = require "lew.lsp.settings.solargraph"
    opts = vim.tbl_deep_extend("force", solargraph_opts, opts)
  end

  if server == "yamlls" then
    local yamlls_opts = require "lew.lsp.settings.yamlls"
    opts = vim.tbl_deep_extend("force", yamlls_opts, opts)
  end

  if server == "zk" then
    local zk_opts = require "lew.lsp.settings.zk"
    opts = vim.tbl_deep_extend("force", zk_opts, opts)
  end

  if server == "rust_analyzer" then
    local rust_opts = require "lew.lsp.settings.rust"

    local rust_tools_status_ok, rust_tools = pcall(require, "rust-tools")
    if not rust_tools_status_ok then
      return
    end

    rust_tools.setup(rust_opts)
    goto continue
  end

  lspconfig[server].setup(opts)
  ::continue::
end
-- TODO: add something to installer later
-- require("lspconfig").motoko.setup {}
