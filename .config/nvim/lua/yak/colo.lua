
default = "yaknotes"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. default)

if not status_ok then
    vim.notify("colorscheme " .. default .. " not found")
    return
end
