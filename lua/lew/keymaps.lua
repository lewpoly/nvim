local keymap = vim.api.nvim_set_keymap
local noremap = { noremap = true, silent = true }

-- Leader
vim.g.mapleader = " "

-- Window Movement
keymap("n", "<Space>", "<NOP>", noremap)
keymap("n", "<c-j>", "<c-w>j", noremap)
keymap("n", "<c-h>", "<c-w>h", noremap)
keymap("n", "<c-k>", "<c-w>k", noremap)
keymap("n", "<c-l>", "<c-w>l", noremap)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", noremap)
keymap("n", "<C-Down>", ":resize +2<CR>", noremap)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", noremap)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", noremap)

-- Visual Mode Tabbing
keymap("v", "<", "<gv", noremap)
keymap("v", ">", ">gv", noremap)

-- V-Mode Move Selected Line/Text
keymap("v", "J", ":move '>+1<CR>gv-gv", noremap)
keymap("v", "K", ":move '<-2<CR>gv-gv", noremap)

-- Tabs
keymap("n", "<S-l>", ":bnext<CR>", noremap)
keymap("n", "<S-h>", ":bprevious<CR>", noremap)

-- JABS
-- keymap("n", "<TAB>", "<cmd>JABSOpen<cr>", { noremap = true, silent = true, nowait = true })

-- NvimTree
keymap("n", "<Leader>e", ":NvimTreeToggle<CR>", noremap)

-- Lir
-- keymap("n", "-", ":lua require'lir.float'.toggle()<cr>", noremap)

-- Telescope
keymap("n", "<leader>km", ":Telescope keymaps<CR>", noremap)
keymap("n", "<leader>ff", ":Telescope find_files<CR>", noremap)
keymap("n", "<leader>fn", ":Telescope notify theme=dropdown<CR>", noremap)
keymap("n", "<leader>f.", ":Telescope find_files hidden=true<CR>", noremap)
keymap("n", "<leader>fb", ":Telescope file_browser<CR>", noremap)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", noremap)
keymap("n", "<TAB>", ":Telescope buffers<CR>", noremap)
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", noremap)
keymap("n", "<leader>fr", ":Telescope oldfiles<CR>", noremap)
keymap("n", "<leader>fm", ":Telescope media_files<CR>", noremap)
keymap("n", "<leader>fp", "<cmd>lua require('telescope').extensions.projects.projects()<CR>", noremap)
-- keymap("n", "<leader>cc", "<cmd>Telescope command_center<CR>", noremap)
keymap("n", "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>", noremap)
keymap(
  "n",
  "<leader>fc",
  "<cmd>lua require('telescope.builtin.internal').colorscheme({enable_preview = true})<cr>",
  noremap
)

-- Comment
keymap("n", "<leader>/", ":CommentToggle<CR>", noremap)
keymap("v", "<leader>/", ":CommentToggle<CR>", noremap)

-- LSP
-- keymap("n", "<leader>ca", ":CodeActionMenu<CR>", noremap)
-- keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", noremap)
-- keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", noremap)
-- keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", noremap)
-- keymap("n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", noremap)
-- keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", noremap)
-- keymap("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<CR>", noremap)
-- keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", noremap)

-- Toggle Diagnostic
keymap("n", "<leader>d", ":TroubleToggle<CR>", noremap)

-- PackerSync
keymap("n", "<leader>ps", ":PackerSync<CR>", noremap)

-- SymbolsOutline
keymap("n", "<leader>s", ":SymbolsOutline<CR>", noremap)

-- ToggleTerm
keymap("n", "<leader>t", ":ToggleTerm<CR>", noremap)
keymap("t", "<esc>", [[<C-\><C-n>]], noremap)
keymap("t", "jk", [[<C-\><C-n>]], noremap)
keymap("t", "<C-h>", [[<C-\><C-n><C-W>h]], noremap)
keymap("t", "<C-j>", [[<C-\><C-n><C-W>j]], noremap)
keymap("t", "<C-k>", [[<C-\><C-n><C-W>k]], noremap)
keymap("t", "<C-l>", [[<C-\><C-n><C-W>l]], noremap)

-- Formatting
-- keymap("n", "<leader>fo", "<cmd>lua vim.lsp.buf.formatting()<CR>", noremap)
-- for dev
keymap("n", "<leader>fo", "<cmd>lua vim.lsp.buf.format { async = true }<CR>", noremap)

-- Run JS
keymap("n", "<leader>jj", "<cmd>w !node<cr>", noremap)

-- Vim Repeat
keymap("n", "<Plug>MyWonderfulMap", ":lua require'My_module'.my_function()<CR>", noremap)

-- Remove Highlight
keymap("n", "<leader>nh", "<cmd>nohlsearch<cr>", noremap)

-- Treesitter
keymap("n", "<F4>", "<cmd>TSHighlightCapturesUnderCursor<cr>", noremap)
