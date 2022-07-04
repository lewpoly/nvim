return {
  tools = {
    on_initialized = function()
      vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter", "CursorHold", "InsertLeave" }, {
        pattern = { "*.rs" },
        callback = function()
          vim.lsp.codelens.refresh()
        end,
      })
    end,
    inlay_hints = {
      parameter_hints_prefix = " ",
      other_hints_prefix = " ",
    },
    hover_actions = {
      auto_focus = false,
      border = "rounded",
      width = 60,
      height = 30,
    },
  },
  server = {
    cmd = { "/usr/bin/rust-analyzer" },
    on_attach = require("lew.lsp.handlers").on_attach,
    capabilities = require("lew.lsp.handlers").capabilities,

    settings = {
      ["rust-analyzer"] = {
        lens = {
          enable = true,
        },
        checkOnSave = {
          command = "clippy",
        },
      },
    },
  },
}
