local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    return
end

require "yak.lsp.configs"
require("yak.lsp.handlers").setup()
require "yak.lsp.null-ls"
