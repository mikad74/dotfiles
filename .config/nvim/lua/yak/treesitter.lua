local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

configs.setup {
    ensure_installed = "all",
    sync_install = false,
    ignore_install = { "phpdoc" },
    highlight = {
        enable = false,
        disable = { "" },
        additional_vim_regex_highlighting = true,
    },
    indent = { enable = true, disable = { "" } },
    rainbow = {
        enable = true,

        -- disable = { "" }
        extended_mode = true,
        max_file_lines = nil,
        colors = { "#b9741d", "#687f58", "#976191", "#ff0000", "#43b1b1" },
    },
    playground = {
        enable = true,
    },
}



