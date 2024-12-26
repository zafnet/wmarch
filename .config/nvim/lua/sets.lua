-- Configuraciones Base en Lua
vim.cmd("syntax on")
vim.opt.termguicolors = true
vim.opt.guifont = "Monospace:h10"
vim.opt.autoread = true
vim.opt.swapfile = false
vim.opt.fileencoding = "utf-8"
vim.opt.fileencodings = { "utf-8" }
vim.opt.ttyfast = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.encoding = "utf-8"
vim.opt.tabstop = 4
vim.opt.spelllang = { "en", "es" }
vim.opt.splitbelow = true
vim.opt.backspace = { "indent", "eol", "start" }
vim.opt.softtabstop = 0
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.showmatch = true
vim.opt.hidden = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.fileformats = { "unix", "dos", "mac" }
vim.opt.background = "dark"
vim.opt.completeopt = { "menuone", "longest" }
vim.opt.complete:append("kspell")
vim.opt.shortmess:append("c")
vim.opt.wildignorecase = true
vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand("~/.config/nvim/undodir")
vim.opt.title = true
vim.opt.signcolumn = "number"
vim.opt.showmode = false
vim.cmd [[ autocmd VimLeave * set guicursor=a:hor25 ]]
