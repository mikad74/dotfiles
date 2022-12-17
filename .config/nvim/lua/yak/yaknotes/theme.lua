local M = {}

function M.setup(config)
	config = config or require("yak.yaknotes.config")
	local colors = require("yak.yaknotes.colors")
	local c = colors.config(config)

	-- Help
	local theme = {}
	theme.defer = {}
	theme.base = {
		NormalFloat = { fg = c.yak3, bg = c.yak0 },
		Normal = { fg = c.yak3, bg = c.yak0 },
		Comment = { fg = c.yak4, style = config.comment_style },
		Constant = { fg = c.yak8 },
		String = { fg = c.yak8 },
		Character = { fg = c.yak8 },
		Boolean = { fg = c.yak7 },
		Float = { fg = c.yak3 },
		Identifier = { fg = c.yak7, style = config.variable_style },
		Function = { fg = c.yak7 },
		Statement = { fg = c.yak10 },
		Conditional = { fg = c.yak6 },
		Repeat = { bg = c.yak11 },
		Label = { bg = c.yak0 },
		Operator = { fg = c.yak6 },
		Keyword = { fg = c.yak10, style = config.keyword_style },
		Exception = { fg = c.yak6 },
		PreProc = { fg = c.yak9 },
		Include = { fg = c.yak11 },
		Define = { fg = c.yak5 },
		Title = { fg = c.yak3 },
		Macro = { bg = c.yak0 },
		PreConduit = { bg = c.yak11 },
		Type = {},
		StorageClass = { fg  = c.yak12 },
		Structure = {},
		Typedef = { bg = c.yak11 },
		Special = { fg = c.yak10 },
		SpecialComment = { fg = c.yak4 },
		MoreMsg = { fg = c.yak3 },
		Error = { fg = c.yak1, bg = c.yak6, style = "bold" },
		Todo = { fg = c.yak1, bg = c.yak4 },
		CursorLineNr = { bg = c.yak11 },
		debugPc = { bg = c.yak11 },
		Conceal = { bg = c.yak0, fg = c.yak0 },
		Directory = { fg = c.yak10 },

		TabLine = { fg = c.yak3, bg = c.yak0 },
		TabLineFill = { bg = c.yak2 },
		TabLineSel = { fg = c.yak1, bg = c.yak11 },

		DiffAdd = { bg = c.diff.add },
		DiffChange = { bg = c.diff.change },
		DiffDelete = { bg = c.diff.delete },
		DiffText = { bg = c.diff.text },

		GitsignsDiffAdd = { fg = c.diff.add },
		GitsignsDiffChange = { fg = c.diff.change },
		GitsignsDiffDelete = { fg = c.diff.delete },
		GitsignsDiffText = { fg = c.diff.text },

		DiagnosticError = { fg = c.yak6 },
		DiagnosticWarn = { fg = c.yak10 },
		DiagnosticHint = { fg = c.yak8 },
		DiagnosticInfo = { fg = c.yak2 },

		ErrorMsg = { fg = c.yak1, bg = c.yak6 },
		VertSplit = { fg = c.yak2 },
		Folded = { fg = c.yak4 },
		IncSearch = { fg = c.yak0, bg = c.yak8 },
		LineNr = { fg = c.yak10 },
		MatchParen = { fg = c.yak3, bg = c.yak2 },
		NonText = { fg = c.yak10, bg = c.yak0 },
		Pmenu = { fg = c.yak3, bg = c.yak2 },
		PmenuSel = { fg = c.yak1, bg = c.yak11 },
		Question = { fg = c.yak11, bg = c.yak0 },
		QuickFixLine = { bg = c.yak8 },
		Search = { bg = c.yakHL },
		SpecialKey = { bg = c.yak8 },
		SpellBad = { sp = c.yak6, style="undercurl" },
		SpellCap = { sp = c.yak12, style="undercurl" },
		SpellLocal = { sp = c.yak8, style="undercurl" },
		SpellRare = { sp = c.yak9, style="undercurl" },
		StatusLine = { fg = c.yak3, bg = c.yak2 },
		StatusLineTerm = { bg = c.yak8 },
		StatusLineTermNC = { bg = c.yak10 },
		Terminal = { fg = c.yak3, bg = c.yak0 },
		VisualNOS = { bg = c.yak8 },
		WarningMsg = { fg = c.yak1, bg = c.yak12 },
		WildMenu = { bg = c.yak8 },
		EndOfBuffer = { bg = c.yak0 },

		ColorColumn = { bg = c.yak10 },
		SignColumn = { bg = c.yak0 },
		CursorColumn = { bg = c.yak10 },
		CursorLine = { bg = c.yak2 },
		FoldColumn = { bg = c.yak10 },
		EasyMotionShade = { bg = c.yak10 },
		Visual = { fg = c.yak1, bg = c.yak11 },
		MultiCursor = { bg = c.yak5 },
		Cursor = { fg = c.yak1, bg = c.yak3 },

		TSComment = { fg = c.yak4, bg = c.yak0 },
		TSError = { fg = c.yak6, bg = c.yak0 },
		TSPunctDelimiter = { fg = c.yak5, bg = c.yak0 },
		TSPunctBracket = { fg = c.yak10, bg = c.yak0 },
		TSPunctSpecial = { fg = c.yak5 },
		TSConstant = { fg = c.yak6, bg = c.yak0 },
		TSConstBuiltin = { fg = c.yak6, bg = c.yak0 },
		TSString = { fg = c.yak8, bg = c.yak0 },
		TSCharacter = { fg = c.yak10, bg = c.yak0 },
		TSNumber = { fg = c.yak8, bg = c.yak0 },
		TSFuncBuiltin = { fg = c.yak9, bg = c.yak0 },
		TSFunction = { fg = c.yak7, bg = c.yak0 },
		TSFuncMacro = { fg = c.yak9, bg = c.yak0 },
		TSParameter = { fg = c.yak10, bg = c.yak0 },
		TSParameterReference = { bg = c.yak9 },
		TSMethod = { fg = c.yak10, bg = c.yak0 },
		TSField = { fg = c.yak4, bg = c.yak0 },
		TSProperty = { fg = c.yak3, bg = c.yak0 },
		TSConstructor = { fg = c.yak7, bg = c.yak0 },
		TSConditional = { fg = c.yak6, bg = c.yak0 },
		TSRepeat = { fg = c.yak6, bg = c.yak0 },
		TSLabel = { fg = c.yak3, bg = c.yak0 },
		TSKeyword = { fg = c.yak7, bg = c.yak0 },
		TSKeywordFunction = { fg = c.yak10, bg = c.yak0 },
		TSKeywordOperator = { fg = c.yak6, bg = c.yak0 },
		TSOperator = { fg = c.yak12, bg = c.yak0 },
		TSException = { fg = c.yak12 },
		TSType = { fg = c.yak9, bg = c.yak0 },
		TSTypeBuiltin = { bg = c.yak9 },
		TSStructure = { bg = c.yak9 },
		TSVariable = { fg = c.yak3, bg = c.yak0 },
		TSVariableBuiltin = { fg = c.yak3 },
		TSText = { fg = c.yak3 },
		TSStrong = { fg = c.yak3, style = "bold" },
		TSEmphasis = { fg = c.yak3, style = "italic" },
		TSUnderline = { bg = c.yak9 },
		TSTitle = { fg = c.yak11, bg = c.yak0 },
		TSLiteral = { fg = c.yak10, bg = c.yak0 },
		TSURI = { fg = c.yak6, gui = "underlined" },
		TSTag = { fg = c.yak7 },
		TSTagDelimiter = { fg = c.yak7 },
		TSInclude = { fg = c.yak7, bg = c.yak0 },
		TSConstMacro = { fg = c.yak7, bg = c.yak0 },
		TSKeywordReturn = { fg = c.yak10, bg = c.yak0 },
		TSMath = { fg = c.yak6, bg = c.yak0 },
		TSEnvironment = { fg = c.yak7, bg = c.yak0 },
		TSSpell = { bg = c.yak6 },

		LspReferenceText = { bg = c.yakHL },
		LspReferenceRead = { bg = c.yakHL },
		LspReferenceWrite = { bg = c.yakHL },

		htmlComment = { fg = c.yak4 },
		htmlLink = { fg = c.yak6, gui = "underlined" },

		TexBeginEnd = {},
		TexDocZone = {},

		-- Dapui colors
		DapUIScope = { fg = c.yak10 },
		DapUIType = { fg = c.yak7 },
		DapUIDecoration = { fg = c.yak10 },
	}

	theme.base = vim.tbl_extend("force", theme.base, config.highlights or {})
	return theme
end

return M
