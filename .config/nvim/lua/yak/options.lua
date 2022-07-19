-- :help options
local o = vim.opt
o.backup = false
o.clipboard = "unnamedplus"
o.cmdheight = 3
o.completeopt = {"menuone", "noselect"}
o.conceallevel = 1
o.fileencoding = "utf-8"
o.hlsearch = true
o.ignorecase = true
o.mouse = ""
o.pumheight = 10
o.showmode = false
o.showtabline = 2
o.smartcase = true
o.smartindent = false
o.splitbelow = true
o.splitright = true
o.termguicolors = true
o.timeoutlen = 300
o.undofile = true
o.updatetime = 300
o.writebackup = true
o.expandtab = true
o.shiftwidth = 2
o.tabstop = 2
o.cursorline = false
o.number = true
o.relativenumber = true
o.signcolumn = "yes"
o.wrap = false
o.scrolloff = 8
o.sidescrolloff = 8
-- o.textwidth = 79
o.foldmethod = "indent"
vim.api.nvim_command("set nofoldenable")
o.guifont = "Fira Code Medium Nerd Font Complete"


o. shortmess:append "c"

o.whichwrap = ""
vim.cmd [[autocmd FileType * set formatoptions=tco1]j]]



