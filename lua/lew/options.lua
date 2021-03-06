vim.o.number = true
vim.o.relativenumber = true
vim.o.autoindent = true
-- vim.o.background = "dark"
vim.o.backup = false
vim.o.clipboard = "unnamedplus"
vim.o.cmdheight = 1
vim.o.completeopt = "menu,menuone,noselect"
vim.o.conceallevel = 0
vim.o.cursorline = true
vim.o.expandtab = true
vim.o.fileencoding = "utf-8"
vim.o.hidden = true
vim.o.hlsearch = true
vim.o.ignorcase = true
vim.o.mouse = "a"
vim.o.numberwidth = 4
-- vim.o.pumblend = 20
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
vim.o.shiftwidth = 2
vim.o.showmode = false
vim.o.showtabline = 0
vim.o.signcolumn = "yes"
vim.o.smartcase = true
vim.o.smartindent = true
vim.o.spelllang = "en"
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.swapfile = false
vim.o.tabstop = 2
vim.o.termguicolors = true
vim.o.title = true
vim.o.timeoutlength = 1000
vim.o.updatetime = 0
vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.o.undofile = true
vim.o.wrap = true
vim.o.writebackup = false
vim.opt.shortmess:append "c"
vim.o.guifont = "monospace:h17"

vim.opt.fillchars.eob = " "
vim.opt.fillchars = "fold: "
vim.opt.foldnestmax = 3
vim.opt.foldminlines = 1
vim.o.foldtext =
  [[substitute(getline(v:foldstart),'\\t',repeat('\ ',&tabstop),'g').'...'.trim(getline(v:foldend)) . ' (' . (v:foldend - v:foldstart + 1) . ' lines)']]

vim.cmd "set whichwrap+=<,>,[,],h,l"
