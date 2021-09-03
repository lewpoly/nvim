local o = vim.opt

o.number = true
o.relativenumber = true
o.autoindent = true
o.background = "dark"
o.clipboard = "unnamedplus"
o.cmdheight = 2
o.cursorline = true
o.expandtab = true
o.fileencoding = "utf-8"
o.hidden = true
o.ignorecase = true
o.mouse = "a"
o.numberwidth = 4
o.scrolloff = 8
o.sidescrolloff = 8
o.shiftwidth = 2
o.showmode = false
o.showtabline = 2
o.signcolumn = "yes"
o.smartindent = true
o.spelllang = "en"
o.splitbelow = true
o.splitright = true
o.swapfile = false
o.tabstop = 2
o.termguicolors = true
o.title = true
o.undofile = true
o.wrap = false
o.shortmess:append "c"
o.formatoptions = o.formatoptions
  - "a" -- Auto formatting is BAD.
  - "t" -- Don't auto format my code. I got linters for that.
  + "c" -- In general, I like it when comments respect textwidth
  + "q" -- Allow formatting comments w/ gq
  - "o" -- O and o, don't continue comments
  + "r" -- But do continue when pressing enter.
  + "n" -- Indent past the formatlistpat, not underneath it.
  + "j" -- Auto-remove comments if possible.
  - "2" -- I'm not in gradeschool anymore
