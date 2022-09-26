local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.autoindent = true
opt.backup = false
-- opt.clipboard = "unnamedplus"
opt.cmdheight = 1
opt.completeopt = "menu,menuone,noselect"
opt.conceallevel = 0
opt.cursorline = true
opt.laststatus = 3

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

opt.fileencoding = "utf-8"
opt.hidden = true
opt.hlsearch = true
opt.mouse = "a"
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.showmode = true
opt.showtabline = 0
opt.signcolumn = "yes"
opt.ignorecase = true
opt.smartcase = true
opt.smartindent = true

opt.spelllang = "en"
opt.spelloptions = "camel"

opt.splitbelow = true
opt.splitright = true
opt.swapfile = false
opt.termguicolors = true
-- opt.colorcolumn = "80"
opt.title = true
-- opt.timeoutlen = 500
opt.updatetime = 50
opt.undodir = os.getenv "HOME" .. "/.vim/undodir"
opt.undofile = true
opt.wrap = true
opt.writebackup = false
opt.shortmess:append "c"
opt.guifont = "monospace:h17"

opt.pumblend = 10
opt.winblend = 10

opt.fillchars.eob = " "
opt.fillchars = "fold: "
opt.foldnestmax = 3
opt.foldminlines = 1
opt.foldtext = [[substitute(getline(v:foldstart),'\\t',repeat('\ ',&tabstop),'g').'...'.trim
  (getline(v:foldend)) . ' (' . (v:foldend - v:foldstart + 1) . ' lines)']]

vim.cmd "set whichwrap+=<,>,[,],h,l"
