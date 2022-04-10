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

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Visual Mode Tabbing
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- V-Mode Move Selected Line/Text
keymap("v", "J", ":move '>+1<CR>gv-gv", opts)
keymap("v", "K", ":move '<-2<CR>gv-gv", opts)

-- Tabs
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- JABS
keymap("n", "<TAB>", "<cmd>JABSOpen<cr>", { noremap = true, silent = true, nowait = true })

-- NvimTree
keymap("n", "<Leader>e", ":NvimTreeToggle<CR>", opts)

-- Lir
-- keymap("n", "-", ":lua require'lir.float'.toggle()<cr>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fb", ":Telescope file_browser<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>ft", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", opts)
keymap("n", "<leader>fr", ":Telescope oldfiles<CR>", opts)
keymap("n", "<leader>fm", ":Telescope media_files<CR>", opts)
keymap("n", "<leader>fp", "<cmd>lua require('telescope').extensions.projects.projects()<CR>", opts)
-- keymap("n", "<leader>ca", ":lua require'telescope.builtin'.lsp_code_actions{}<CR>", opts)
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
-- keymap("n", "<leader>ca", ":CodeActionMenu<CR>", opts)
-- keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
-- keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
-- keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
-- keymap("n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
-- keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
-- keymap("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
-- keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)

-- Toggle Diagnostic
keymap("n", "<leader>d", ":TroubleToggle<CR>", opts)

-- PackerSync
keymap("n", "<leader>ps", ":PackerSync<CR>", opts)

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

-- Run JS
keymap("n", "<leader>jj", ":w !node<CR>", opts)

-- Vim Repeat
keymap("n", "<Plug>MyWonderfulMap", ":lua require'My_module'.my_function()<CR>", opts)

-- Remove Highlight
keymap("n", "<leader>nh", "<cmd>nohlsearch<cr>", opts)

-- Treesitter
keymap("n", "<F4>", "<cmd>TSHighlightCapturesUnderCursor<cr>", opts)
