local command_center = require("command_center")
local noremap = { noremap = true }
local silent_noremap = { noremap = true, silent = true }

command_center.add({

	-- Telescope --
	{
		description = "Grep",
		command = "Telescope live_grep",
		keybindings = { "n", "<leader>fg", noremap },
	},
	{
		description = "Find Files",
		command = "Telescope find_files",
		keybindings = { "n", "<leader>ff", noremap },
	},
	{
		description = "Find Hidden Files",
		command = "Telescope find_files hidden=true",
		keybindings = { "n", "<leader>f.", noremap },
	},
	{
		description = "Document Symbols(Telescope)",
		command = "Telescope lsp_document_symbols",
		keybindings = { "n", "<leader>fs", noremap },
	},
	{
		description = "Buffers(Telescope)",
		command = "Telescope buffers",
		keybindings = { "n", "<leader>ft", noremap },
	},
	{
		description = "Help Tags",
		command = "Telescope help_tags",
		keybindings = { "n", "<leader>fh", noremap },
	},
	{
		description = "Recent Files",
		command = "Telescope oldfiles",
		keybindings = { "n", "<leader>fr", noremap },
	},
	{
		description = "Media Files",
		command = "Telescope media_files",
		keybindings = { "n", "<leader>fm", noremap },
	},
	{
		description = "Projects",
		command = "lua require('telescope').extensions.projects.projects()",
		keybindings = { "n", "<leader>fp", noremap },
	},
	{
		description = "Colorscheme Select",
		command = "lua require('telescope.builtin.internal').colorscheme({enable_preview = true})",
		keybindings = { "n", "<leader>fc", noremap },
	},

	-- JABS --
	{
		description = "JABS",
		command = "JABSOpen",
		keybindings = { "n", "<TAB>", noremap },
	},

	-- LSP --
	{
		description = "Show Function Signaure",
		command = "lua vim.lsp.buf.hover()",
		keybindings = {
			{ "n", "K", silent_noremap },
			{ "i", "<C-k>", silent_noremap },
		},
	},
	{
		description = "Symbols Outline",
		command = "SymbolsOutline",
		keybindings = { "n", "<leader>s", noremap },
	},
	{
		description = "Diagnostics Toggle",
		command = "TroubleToggle",
		keybindings = { "n", "<leader>d", noremap },
	},
	{
		description = "Format File",
		command = "Format",
		keybindings = { "n", "<leader>fo", noremap },
	},

	-- Comments --
	{
		description = "Comment Toggle",
		command = "CommentToggle",
		keybindings = {
			{ "n", "<leader>/", noremap },
			{ "v", "<leader>/", noremap },
		},
	},

	-- ToggeTerm --
	{
		description = "Terminal Toggle",
		command = "ToggleTerm",
		keybindings = { "n", "<leader>t", noremap },
	},

	-- Highlights --
	{
		description = "Highlight Remove",
		command = "nohlsearch",
		keybindings = { "n", "<leader>nh", noremap },
	},

	--Treesitter --
	{
		description = "Treesitter Highlight",
		command = "TSHighlightCapturesUnderCursor",
		keybindings = { "n", "<F4>", noremap },
	},

	-- PackerSync --
	{
		description = "PackerSync",
		command = "PackerSync",
		keybindings = { "n", "<leader>ps", noremap },
	},
})
