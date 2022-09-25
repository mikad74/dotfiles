local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

configs.setup {
    ensure_installed = "all",
    sync_install = false,
    ignore_install = { "phpdoc" },
    highlight = {
        enable = true,
        disable = { "html" },
        additional_vim_regex_highlighting = true,
    },
    indent = { enable = true, disable = { "html" } },
    rainbow = {
        enable = true,

        -- disable = { "" }
        extended_mode = true,
        max_file_lines = nil,
        colors = { "#b9741d", "#687f58", "#976191", "#af0000", "#43b1b1" },
    },
    playground = {
        enable = true,
    },
    context_commentstring = {
        enable = true,
        enable_autocmd = false,
    }
}



