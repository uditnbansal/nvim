local opt = vim.opt -- for conciseness
local cmd = vim.cmd

opt.background = "dark"
opt.backspace = "indent,eol,start"
opt.cursorline = true
opt.equalalways = false
opt.expandtab = true
opt.hidden = true
opt.hlsearch = true
opt.ignorecase = true
opt.incsearch = true
opt.laststatus = 2
opt.modeline = true
opt.number = true
opt.scrolloff = 3
opt.shiftwidth = 4
opt.smartcase = true
opt.softtabstop = 2
opt.splitbelow = true
opt.splitright = true
opt.tabpagemax = 25
opt.tabstop = 2
opt.visualbell = true
opt.wildignorecase = true
opt.wildmenu = true
opt.wrap = false

cmd("colorscheme gruvbox")