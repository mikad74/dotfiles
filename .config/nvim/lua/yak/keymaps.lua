local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local k = vim.api.nvim_set_keymap

-- Leader Key
k("", "<Space>", "<Nop>", opts)
k("", "<bs>", "<Nop>", opts)
k("", "<CR>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal Mode --
-- Window Navigation
k("n", "<C-h>", "<C-w>h", opts)
k("n", "<C-j>", "<C-w>j", opts)
k("n", "<C-k>", "<C-w>k", opts)
k("n", "<C-l>", "<C-w>l", opts)
k("n", "<C-=>", "<cmd>:vertical resize +5<cr>", opts)
k("n", "<C-->", "<cmd>:vertical resize -5<cr>", opts)


-- Nvim-tree
k("n", "<C-n>", ":NvimTreeToggle<CR>", opts)

-- Quick exit
k("n", "<C-q>", ":q<CR>", opts)

-- Tab movement
k("n", "<M-k>", ":tabn<CR>", opts)
k("n", "<M-j>", ":tabp<CR>", opts)

-- Visual --
k("v", "<", "<gv", opts)
k("v", ">", ">gv", opts)

-- Telescope 
k("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<CR>", opts)
k("n", "<leader>d", "<cmd>Telescope live_grep<CR>", opts)
k("n", "<leader>b", "<cmd>Telescope buffers<CR>", opts)

-- Colorscheme management
k("n", "<leader>z", "<cmd>TSHighlightCapturesUnderCursor<CR>", opts)
k("n", "<leader>x", "<cmd>:echo synIDattr(synID(line('.'), col('.'),1), 'name')<CR>", opts)

local status_ok, _ = pcall(require, "gitsigns")
if not status_ok then
    return
end

k("n", "c[", "<cmd>:Gitsigns prev_hunk<CR>", opts)
k("n", "c]", "<cmd>:Gitsigns next_hunk<CR>", opts)
k("n", "<leader>hp", "<cmd>:Gitsigns preview_hunk<CR>", opts)

-- HTML development
k("n", "<leader>\\", "<cmd>:exe 'silent !live-server'<CR>", opts)

-- Neorg
k("n", "<leader>nn", "<cmd>:NeorgStart<CR>", opts)
k("n", "<leader>nw", ":Neorg workspace", opts)
