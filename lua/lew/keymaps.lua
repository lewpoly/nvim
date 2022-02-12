local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

-- Leader
vim.g.mapleader = " "

-- Window Movement
keymap("n", "<Space>", "<NOP>", opts)
keymap("n", "<c-j>", "<c-w>j", opts)
keymap("n", "<c-h>", "<c-w>h", opts)
keymap("n", "<c-k>", "<c-w>k", opts)
keymap("n", "<c-l>", "<c-w>l", opts)

-- Visual Mode Tabbing
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- V-Mode Move Selected Line/Text
keymap("v", "J", ":move '>+1<CR>gv-gv", opts)
keymap("v", "K", ":move '<-2<CR>gv-gv", opts)

-- Tabs
keymap("n", "<TAB>", ":bnext<CR>", opts)
keymap("n", "<S-TAB>", ":bprevious<CR>", opts)
-- keymap("n", "<c-w>", ":bd<CR>", opts)

-- NvimTree
keymap("n", "<Leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", opts)
keymap("n", "<leader>fr", ":Telescope oldfiles<CR>", opts)
keymap("n", "<leader>fm", ":Telescope media_files<CR>", opts)
-- keymap("n", "<leader>fc", ":Telescope colorscheme<CR>", opts)
keymap(
	"n",
	"<leader>fc",
	"<cmd>lua require('telescope.builtin.internal').colorscheme({enable_preview = true})<cr>",
	opts
)

-- Comment
keymap("n", "<leader>/", ":CommentToggle<CR>", opts)
keymap("v", "<leader>/", ":CommentToggle<CR>", opts)

-- LSP
-- keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
-- keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
-- keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
-- keymap("n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
-- keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
-- keymap("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
-- keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)

-- Toggle Diagnostic
keymap("n", "<leader>d", ":TroubleToggle<CR>", opts)

-- ToggleTerm
keymap("n", "<leader>t", ":ToggleTerm<CR>", opts)
keymap("t", "<esc>", [[<C-\><C-n>]], opts)
keymap("t", "jk", [[<C-\><C-n>]], opts)
keymap("t", "<C-h>", [[<C-\><C-n><C-W>h]], opts)
keymap("t", "<C-j>", [[<C-\><C-n><C-W>j]], opts)
keymap("t", "<C-k>", [[<C-\><C-n><C-W>k]], opts)
keymap("t", "<C-l>", [[<C-\><C-n><C-W>l]], opts)

-- Formatting
keymap("n", "<leader>fo", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
