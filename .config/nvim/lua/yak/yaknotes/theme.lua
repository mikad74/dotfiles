local M = {}

function M.setup(config)
    config = config or require("yak.yaknotes.config")
    local colors = require("yak.yaknotes.colors")
    local c = colors.config(config)

    -- Help
    local theme = {}
    theme.defer = {}
    theme.base = {
        NormalFloat = { fg = c.yak3, bg = c.yak0},
        Normal = { fg = c.yak3, bg = c.yak0},
        Comment = { fg = c.yak4, style = config.comment_style },
        Constant = { fg = c.yak8},
        String = { fg = c.yak8 },
        Character = { fg = c.yak8 },
        Boolean = { fg = c.yak7 },
        Float =  { fg = c.yak3 },
        Identifier = {fg = c.yak7, style = config.variable_style },
        Function = { fg = c.yak7 },
        Statement = { fg = c.yak10 },
        Conditional = { fg = c.yak6 },
        Repeat = { bg = c.yak11 },
        Label = { bg = c.yak11 },
        Operator = { fg = c.yak6 },
        Keyword = { fg = c.yak10, style = config.keyword_style },
        Exception = { bg = c.yak11 },
        PreProc =  { fg = c.yak9 },
        Include = { fg = c.yak11 },
        Define = { fg = c.yak5 },
        Title = { fg = c.yak3 },
        Macro = { bg = c.yak11 },
        PreConduit = { bg = c.yak11 },
        Type = {},
        StorageClass = { bg = c.yak11 }, 
        Structure = {},
        Typedef = { bg = c.yak11 },
        Special = { bg = c.yak11 },
        SpecialComment = { fg = c.yak4 }, 
        MoreMsg = { fg = c.yak3 },
        Error = { fg = c.yak1, bg = c.yak6, style = "bold" },
        Todo = { fg = c.yak1, bg = c.yak4 },
        CursorLineNr = { bg = c.yak11 },
        debugPc = { bg = c.yak11 },
        Conceal = { bg = c.yak11 },
        Directory = { bg = c.yak11 },

        TabLine = { fg = c.yak3, bg = c.yak0 },
        TabLineFill = { bg = c.yak2 },
        TabLineSel = { fg = c.yak1, bg = c.yak11 },

        DiffAdd = { bg = c.diff.add },
        DiffChange = { bg = c.diff.change },
        DiffDelete = { bg = c.diff.delete },
        DiffText = { bg = c.diff.text },

        ErrorMsg = { fg = c.yak1, bg = c.yak6 },
    }

    theme.base = vim.tbl_extend("force", theme.base, config.highlights or {})
    return theme
end

return M

