local config 

vim = vim or { g = {}, o = {} }

local function opt(key, default)
    key = "yaknotes_" .. key
    if vim.g[key] == nil then
        return default
    end
    if vim.g[key] == 0 then
        return false
    end
    return vim.g[key]
end

config = {
    background_color = opt("background_color", "default"),
    comment_style = opt("comment_style", "italic"),
    keyword_style = opt("keyword_style", "italic"),
    function_style = opt("function_style", "bold"),
    variable_style = opt("variable_style", "NONE"),
    highlights = opt("highlights", {}),
    telescope_theme = opt("telescope_theme", true),
}

return config

