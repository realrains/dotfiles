local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs and indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false -- no linebreak

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspce
opt.backspace = "indent,eol,start"

-- clibboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

