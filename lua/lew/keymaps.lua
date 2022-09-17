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

-- From the Primeagen
keymap("n", "<c-d>", "<c-d>zz", opts)
keymap("n", "<c-u>", "<c-u>zz", opts)
keymap("n", "J", "mzJ`z", opts)
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)
-- keymap("n", "<leader>y", "\"+y", opts)
-- keymap("v", "<leader>y", "\"+y", opts)

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

-- Delete buffer
keymap("n", "Q", ":Bdelete<CR>", opts)

-- Telescope
keymap("n", "<leader>km", ":Telescope keymaps<CR>", opts)
-- keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fn", ":Telescope notify theme=dropdown<CR>", opts)
keymap("n", "<leader>f.", ":Telescope find_files hidden=true<CR>", opts)
keymap("n", "<leader>fb", ":Telescope file_browser<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
keymap("n", "<TAB>", ":Telescope buffers<CR>", opts)
-- keymap("n", "<TAB>", "<cmd>lua require('lew.bfs').open()<CR>", opts)
-- keymap("n", "<TAB>", "<cmd>JABSOpen<CR>", opts)
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", opts)
keymap("n", "<leader>fr", ":Telescope oldfiles<CR>", opts)
keymap("n", "<leader>fm", ":Telescope media_files<CR>", opts)
keymap("n", "<leader>fp", "<cmd>lua require('telescope').extensions.projects.projects()<CR>", opts)
keymap("n", "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>", opts)
keymap("n", "<leader>fc", ":Telescope colorscheme theme=dropdown<CR>", opts)
vim.api.nvim_set_keymap(
  "n",
  "<leader>ff",
  "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>",
  opts
)
vim.api.nvim_set_keymap("n", "<leader>ha", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", opts)

-- Rest
keymap("n", "<leader>rr", ":lua require('rest-nvim').run()<CR>", opts)
keymap("n", "<leader>rp", ":lua require('rest-nvim').run(true)<CR>", opts)
keymap("n", "<leader>rl", ":lua require('rest-nvim').last()<CR>", opts)

-- Toggle Tabline
keymap("n", "<leader>b", "<cmd>lua require('lew.functions').toggle_tabline()<cr>", opts)

-- cybu
keymap("n", "<S-l>", ":CybuNext<CR>", opts)
keymap("n", "<S-h>", ":CybuPrev<CR>", opts)

-- Comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').locked('toggle.linewise.current')()<CR>", opts)
keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>', opts)

-- Toggle Diagnostic
-- keymap("n", "<leader>d", ":Telescope diagnostics<cr>", opts)
keymap("n", "<leader>d", ":TroubleToggle<cr>", opts)

-- Inlay-Hints
keymap("n", "<leader>lh", "<cmd>lua require('lsp-inlayhints').toggle()<CR>", opts)

-- PackerSync
keymap("n", "<leader>ps", ":PackerSync<CR>", opts)

-- SymbolsOutline
keymap("n", "<leader>s", ":SymbolsOutline<CR>", opts)

-- ToggleTerm
keymap("n", "<leader>t", ":ToggleTerm dir='%:p:h'<CR>", opts)
-- keymap("n", "<leader>t", ":ToggleTerm<CR>", opts)
keymap("t", "<esc>", [[<C-\><C-n>]], opts)
keymap("t", "jk", [[<C-\><C-n>]], opts)
keymap("t", "<C-h>", [[<C-\><C-n><C-W>h]], opts)
keymap("t", "<C-j>", [[<C-\><C-n><C-W>j]], opts)
keymap("t", "<C-k>", [[<C-\><C-n><C-W>k]], opts)
keymap("t", "<C-l>", [[<C-\><C-n><C-W>l]], opts)
keymap("n", "<leader>g", ":lua _LAZYGIT_TOGGLE()<CR>", opts)

keymap("n", "<leader>fo", "<cmd>lua vim.lsp.buf.format ({ async = true })<CR>", opts)

-- Run Code
-- keymap("n", "<leader>jj", "<cmd>w !node<cr>", opts)
keymap("n", "<leader>jj", ":Jaq<CR>", opts)
keymap("n", "<leader>lr", ":Lab code run<CR>", opts)
keymap("n", "<leader>ls", ":Lab code stop<CR>", opts)
keymap("n", "<leader>lp", ":Lab code panel<CR>", opts)

-- Remove Highlight
keymap("n", "<leader>nh", "<cmd>nohlsearch<cr>", opts)

-- Treesitter
keymap("n", "<F4>", "<cmd>TSHighlightCapturesUnderCursor<cr>", opts)

-- Notes
keymap("n", "<c-n>", ":e ~/notes/<cr>", opts)
