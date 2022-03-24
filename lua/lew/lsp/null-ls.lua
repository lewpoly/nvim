local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
-- local diagnostics = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting

null_ls.setup({
	debug = true,
	sources = {
		formatting.prettierd.with({
			env = {
				PRETTIERD_DEFAULT_CONFIG = "home/lew/.config/nvim/.prettierrc.json",
			},
		}),
		-- formatting.prettierd,
		-- formatting.prettier.with({
		-- 	disabled_filetypes = { "html", "css" },
		-- 	extra_args = { "--single-quote", "--jsx-single-quote" },
		-- }),
		-- formatting.eslint_d,
		formatting.stylua,
		-- diagnostics.flake8
		formatting.black.with({ extra_args = { "--fast" } }),
	},
})
