

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

-- Leader
vim.g.mapleader = ' '
keymap('n', '<Space>', '<NOP>', opts)

-- Window Movement
keymap('n', '<c-j>', '<c-w>j', opts)
keymap('n', '<c-h>', '<c-w>h', opts)
keymap('n', '<c-k>', '<c-w>k', opts)
keymap('n', '<c-l>', '<c-w>l', opts)

-- Visual Mode Tabbing
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

-- V-Mode Move Selected Line/Text
keymap('x', 'K', ':move \'<-2<CR>gv-gv\'', opts)
keymap('x', 'J', ':move \'<+1<CR>gv-gv\'', opts)

-- Tabs
keymap('n', '<TAB>', ':bnext<CR>', opts)
keymap('n', '<S-TAB>', ':bprevious<CR>', opts)
keymap('n', '<c-w>', ':bd<CR>', opts)

--NvimTree
keymap('n', '<Leader>e', ':NvimTreeOpen<CR>', opts)

-- Telescope
keymap('n', '<leader>ff', ':Telescope find_files<CR>', opts)
keymap('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
keymap('n', '<leader>fb', ':Telescope buffers<CR>', opts)
keymap('n', '<leader>fh', ':Telescope help_tags<CR>', opts)
keymap('n', '<leader>fd', ':Telescope oldfiles<CR>', opts)
