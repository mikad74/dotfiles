local status_ok, mason = pcall(require, "mason")
if not status_ok then
    return
end

local status_ok, masonLspconfig = pcall(require, "mason-lspconfig")
if not status_ok then
    return
end

local lspconfig = require("lspconfig")

local servers = { "jsonls", "sumneko_lua" , "pyright", "rust_analyzer", "taplo", "emmet_ls", "cssls", "tsserver", "texlab"}

mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
        },
    },




})

masonLspconfig.setup({
    ensure_installed = servers
})

for _, server in pairs(servers) do
    local opts = {
        on_attach = require("yak.lsp.handlers").on_attach,
        capabilities = require("yak.lsp.handlers").capabilities
    }
    local has_custom_opts, server_custom_opts = pcall(require, "yak.lsp.settings." .. server)
    if has_custom_opts then
        opts = vim.tbl_deep_extend("force", server_custom_opts, opts)
    end
    lspconfig[server].setup(opts)
end

