local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting
local code_actions = null_ls.builtins.code_actions

null_ls.setup {
  debug = false,
  sources = {
    formatting.prettierd,
    -- diagnostics.tidy,
    -- formatting.prettier.with({
    -- 	disabled_filetypes = { "html", "css" },
    -- 	extra_args = { "--single-quote", "--jsx-single-quote" },
    -- }),
    code_actions.eslint_d.with {
      prefer_local = "node_modules/.bin",
    },
    diagnostics.eslint_d.with {
      prefer_local = "node_modules/.bin",
    },
    diagnostics.flake8,
    diagnostics.shfmt,
    formatting.stylua,
    formatting.black.with { extra_args = { "--fast" } },
  },
}
