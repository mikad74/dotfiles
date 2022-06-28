local util = {}

util.colorsUsed = {}
util.colorCache = {}

function util.highlight(group, color)
    if color.fg then
        util.colorsUsed[color.fg] = true
    end
    if color.bg then
        util.colorsUsed[color.bg] = true
    end
    if color.sp then
        util.colorsUsed[color.sp] = true
    end

    local style = color.style and "gui=" .. color.style or "gui=NONE"
    local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
    local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
    local sp = color.sp and "guisp=" .. color.sp or "guisp=NONE"

    local h1 = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp

    if color.link then 
        vim.cmd("highight! link " .. group .. " " .. color.link)
    else
        vim.cmd(h1)
    end
end

function util.syntax(syntax)
    for group,colors in pairs(syntax) do
        util.highlight(group, colors)
    end
end

function util.load(theme)
    if vim.g.colors_name then 
        vim.cmd("hi clear")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "yaknotes"

    util.syntax(theme.base)

    vim.defer_fn(function()
        util.syntax(theme.defer)
    end, 100)
end

return util
