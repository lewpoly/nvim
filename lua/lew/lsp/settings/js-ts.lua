local capabilities = require("lew.lsp").common_capabilities()

require("typescript").setup {
  -- disable_commands = false, -- prevent the plugin from creating Vim commands
  debug = false, -- enable debug logging for commands
  go_to_source_definition = {
    fallback = true, -- fall back to standard LSP definition on failure
  },
  server = { -- pass options to lspconfig's setup method
    on_attach = require("lew.lsp").common_on_attach,
    on_init = require("lew.lsp").common_on_init,
    capabilities = capabilities,
  },
}

