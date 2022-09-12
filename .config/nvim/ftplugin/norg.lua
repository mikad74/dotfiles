vim.cmd [[autocmd BufWritePost * execute ':terminal git add % && git commit -m %']]
