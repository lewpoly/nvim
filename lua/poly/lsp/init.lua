local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "poly.lsp.lsp-installer"
require("poly.lsp.handlers").setup()
require "poly.lsp.null-ls"
