require "yak.dap.python"
require "yak.dap.ui"
require "yak.dap.js"


local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<M-\\>", "<cmd>DapToggleBreakpoint<cr>", opts)
vim.api.nvim_set_keymap("n", "<M-]>", "<cmd>DapContinue<cr>", opts)
vim.api.nvim_set_keymap("n", "<M-[>", "<cmd>DapStepOut<cr>", opts)
vim.api.nvim_set_keymap("n", "<M-q>", "<cmd>DapTerminate<cr>", opts)
vim.api.nvim_set_keymap("n", "<M-/>", "<cmd>:lua require'dapui'.toggle()<CR>", opts)
vim.api.nvim_set_keymap('n', '<M-S-/>',
          "<cmd>lua local widgets=require'dap.ui.widgets';widgets.centered_float(widgets.scopes)<CR>", opts)
