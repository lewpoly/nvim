local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

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
-- keymap("n", "<S-l>", ":bnext<CR>", noremap)
-- keymap("n", "<S-h>", ":bprevious<CR>", noremap)

-- JABS
-- keymap("n", "<TAB>", "<cmd>JABSOpen<cr>", { noremap = true, silent = true, nowait = true })

-- NvimTree
keymap("n", "<Leader>e", ":NvimTreeToggle<CR>", opts)

-- Lir
-- keymap("n", "-", ":lua require'lir.float'.toggle()<cr>", noremap)

-- Telescope
keymap("n", "<leader>km", ":Telescope keymaps<CR>", opts)
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fn", ":Telescope notify theme=dropdown<CR>", opts)
keymap("n", "<leader>f.", ":Telescope find_files hidden=true<CR>", opts)
keymap("n", "<leader>fb", ":Telescope file_browser<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
keymap("n", "<TAB>", ":Telescope buffers<CR>", opts)
-- keymap("n", "<TAB>", "<cmd>lua require('lew.bfs').open()<CR>", opts)
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", opts)
keymap("n", "<leader>fr", ":Telescope oldfiles<CR>", opts)
keymap("n", "<leader>fm", ":Telescope media_files<CR>", opts)
keymap("n", "<leader>fp", "<cmd>lua require('telescope').extensions.projects.projects()<CR>", opts)
-- keymap("n", "<leader>cc", "<cmd>Telescope command_center<CR>", noremap)
keymap("n", "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>", opts)
keymap(
  "n",
  "<leader>fc",
  "<cmd>lua require('telescope.builtin.internal').colorscheme({enable_preview = true})<cr>",
  opts
)

-- Rest
keymap("n", "<leader>rn", ":lua require('rest-nvim').run()<CR>", opts)
keymap("n", "<leader>rp", ":lua require('rest-nvim').run(true)<CR>", opts)
keymap("n", "<leader>rl", ":lua require('rest-nvim').last()<CR>", opts)

-- Toggle Tabline
keymap("n", "<leader>b", "<cmd>lua require('lew.functions').toggle_tabline()<cr>", opts)

-- cybu
keymap("n", "<S-l>", ":CybuNext<CR>", opts)
keymap("n", "<S-h>", ":CybuPrev<CR>", opts)
-- keymap("n", "<TAB>", ":CybuHistoryNext<CR>", opts)
-- keymap("n", "<S-<TAB>>", ":CybuHistoryPrev<CR>", opts)

-- Comment
keymap("n", "<leader>/", ":CommentToggle<CR>", opts)
keymap("v", "<leader>/", ":CommentToggle<CR>", opts)

-- Toggle Diagnostic
keymap("n", "<leader>d", ":TroubleToggle<CR>", opts)

-- PackerSync
keymap("n", "<leader>ps", ":PackerSync<CR>", opts)

-- SymbolsOutline
keymap("n", "<leader>s", ":SymbolsOutline<CR>", opts)

-- ToggleTerm
keymap("n", "<leader>t", ":ToggleTerm dir='%:p:h'<CR>", opts)
keymap("t", "<esc>", [[<C-\><C-n>]], opts)
keymap("t", "jk", [[<C-\><C-n>]], opts)
keymap("t", "<C-h>", [[<C-\><C-n><C-W>h]], opts)
keymap("t", "<C-j>", [[<C-\><C-n><C-W>j]], opts)
keymap("t", "<C-k>", [[<C-\><C-n><C-W>k]], opts)
keymap("t", "<C-l>", [[<C-\><C-n><C-W>l]], opts)
keymap("n", "<leader>g", ":lua _LAZYGIT_TOGGLE()<CR>", opts)

keymap("n", "<leader>fo", "<cmd>lua vim.lsp.buf.format ({ async = true })<CR>", opts)

-- Run JS
keymap("n", "<leader>jj", "<cmd>w !node<cr>", opts)

-- Vim Repeat
keymap("n", "<Plug>MyWonderfulMap", ":lua require'My_module'.my_function()<CR>", opts)

-- Remove Highlight
keymap("n", "<leader>nh", "<cmd>nohlsearch<cr>", opts)

-- Treesitter
keymap("n", "<F4>", "<cmd>TSHighlightCapturesUnderCursor<cr>", opts)
