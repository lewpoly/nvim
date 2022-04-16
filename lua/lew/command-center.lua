local command_center = require("command_center")
local noremap = { noremap = true }
local silent_noremap = { noremap = true, silent = true }

command_center.add({

	-- Telescope --
	{
		description = "Grep",
		cmd = "Telescope live_grep",
		keybindings = { "n", "<leader>fg", noremap },
	},
	{
		description = "Find Files",
		cmd = "Telescope find_files",
		keybindings = { "n", "<leader>ff", noremap },
	},
	{
		description = "Find Hidden Files",
		cmd = "Telescope find_files hidden=true",
		keybindings = { "n", "<leader>f.", noremap },
	},
	{
		description = "Document Symbols(Telescope)",
		cmd = "Telescope lsp_document_symbols",
		keybindings = { "n", "<leader>fs", noremap },
	},
	{
		description = "Buffers(Telescope)",
		cmd = "Telescope buffers",
		keybindings = { "n", "<leader>ft", noremap },
	},
	{
		description = "Help Tags",
		cmd = "Telescope help_tags",
		keybindings = { "n", "<leader>fh", noremap },
	},
	{
		description = "Recent Files",
		cmd = "Telescope oldfiles",
		keybindings = { "n", "<leader>fr", noremap },
	},
	{
		description = "Media Files",
		cmd = "Telescope media_files",
		keybindings = { "n", "<leader>fm", noremap },
	},
	{
		description = "Projects",
		cmd = "lua require('telescope').extensions.projects.projects()",
		keybindings = { "n", "<leader>fp", noremap },
	},
	{
		description = "Colorscheme Select",
		cmd = "lua require('telescope.builtin.internal').colorscheme({enable_preview = true})",
		keybindings = { "n", "<leader>fc", noremap },
	},

	-- JABS --
	{
		description = "JABS",
		cmd = "JABSOpen",
		keybindings = { "n", "<TAB>", noremap },
	},

	-- LSP --
	{
		description = "Show Function Signaure",
		cmd = "lua vim.lsp.buf.hover()",
		keybindings = {
			{ "n", "K", silent_noremap },
			{ "i", "<C-k>", silent_noremap },
		},
	},
	{
		description = "Symbols Outline",
		cmd = "SymbolsOutline",
		keybindings = { "n", "<leader>s", noremap },
	},
	{
		description = "Diagnostics Toggle",
		cmd = "TroubleToggle",
		keybindings = { "n", "<leader>d", noremap },
	},
	{
		description = "Format File",
		cmd = "Format",
		keybindings = { "n", "<leader>fo", noremap },
	},

	-- Comments --
	-- {
		-- description = "Comment Toggle",
		-- command = "CommentToggle",
		-- keybindings = {
			-- { "n", "<leader>/", noremap },
			-- { "v", "<leader>/", noremap },
		-- },
	-- },

	-- ToggeTerm --
	{
		description = "Terminal Toggle",
		cmd = "ToggleTerm",
		keybindings = { "n", "<leader>t", noremap },
	},

	-- Highlights --
	{
		description = "Highlight Remove",
		cmd = "nohlsearch",
		keybindings = { "n", "<leader>nh", noremap },
	},

	--Treesitter --
	{
		description = "Treesitter Highlight",
		cmd = "TSHighlightCapturesUnderCursor",
		keybindings = { "n", "<F4>", noremap },
	},

	-- PackerSync --
	{
		description = "PackerSync",
		cmd = "PackerSync",
		keybindings = { "n", "<leader>ps", noremap },
	},
})
