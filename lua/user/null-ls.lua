local null_ls = require("null-ls")
local sources = {
	null_ls.builtins.formatting.prettierd.with({
		filetypes = { "html", "cssls", "sumneko_lua", "tsserver", "pyright" },
	}),
	null_ls.builtins.formatting.stylua,
}
null_ls.setup({ sources = sources })
require("null-ls").setup({
	sources = {
		require("null-ls").builtins.formatting.stylua,
		require("null-ls").builtins.diagnostics.eslint,
		require("null-ls").builtins.completion.spell,
	},
})
