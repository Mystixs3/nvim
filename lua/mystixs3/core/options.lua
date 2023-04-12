local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs and indendentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "number"

-- backspace
opt.backspace = "indent,eol,start"

-- split windows
opt.splitright = true
opt.splitbelow = true
