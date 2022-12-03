---@module "radium-dark"
---@author dharmx
---@license GPL-3.0

local util = require("colo.hl")
util.prepare_theme("radium-dark", "dark")

local col = require("colo.colors.radium").dark
local hl = util.highlight
local deco = util.decorations

---TERMINAL HIGHLIGHTS
hl.terminal(0, col.black:lighten(4))
hl.terminal(1, col.red)
hl.terminal(2, col.green)
hl.terminal(3, col.yellow)
hl.terminal(4, col.blue)
hl.terminal(5, col.magenta)

---EDITOR HIGHLIGHTS
hl.link("CursorColumn", "CursorLine")
hl.short_set("Normal", col.black, col.white)
hl.short_set("NormalFloat", col.black:darken(1), col.white:darken(10))
hl.short_set("FloatBorder", col.black:darken(1), col.black:darken(1))
hl.short_set("Cursor", col.green:lighten(3), col.black)
hl.background("Visual", col.black:brighten(1):lighten(3))
hl.background("CursorLine", col.black:lighten(2))
hl.background("ColorColumn", col.black)
hl.foreground("Error", col.red:darken(3))
hl.foreground("CursorLineNr", col.yellow, { deco.B })
hl.foreground("LineNr", col.black:lighten(15))

---PMENU HIGHLIGHTS
hl.short_set("Pmenu", col.black:darken(1), col.white:darken(20))
hl.short_set("PmenuSel", col.green, col.black)
hl.background("PmenuSbar", col.black:darken(1))
hl.background("PmenuThumb", col.black:lighten(3))

---GUTTER HIGHLIGHTS
hl.short_set("FoldColumn", col.black, col.cyan)
hl.short_set("Folded", col.black, col.black:lighten(12))
hl.background("SignColumn", col.black)

---MESSAGE HIGHLIGHTS
hl.foreground("EndOfBuffer", col.magenta)
hl.foreground("ErrorMsg", col.red)
hl.foreground("ModeMsg", col.blue, { deco.BOLD })
hl.foreground("MsgArea", col.blue)
hl.foreground("MoreMsg", col.yellow)
hl.foreground("Question", col.green)
hl.foreground("Directory", col.yellow)
hl.foreground("WarningMsg", col.bright_red)

---DIFF HIGHLIGHTS
hl.foreground("DiffAdd", col.green, { deco.R })
hl.foreground("DiffChange", col.magenta, { deco.R })
hl.foreground("DiffDelete", col.red, { deco.R })
hl.foreground("DiffText", col.blue, { deco.R })

---PROMPT HIGHLIGHTS
hl.short_set("WildMenu", col.blue, col.black)
hl.short_set("Substitute", col.bright_magenta, col.black)
hl.short_set("Search", col.yellow, col.black)
hl.short_set("IncSearch", col.cyan, col.black)

---DIAGNOSTICS HIGHLIGHTS
hl.link("DiagnosticSignWarn", "DiagnosticHint")
hl.link("DiagnosticSignError", "DiagnosticHint")
hl.link("DiagnosticSignInfo", "DiagnosticHint")
hl.link("DiagnosticSignHint", "DiagnosticHint")
hl.foreground("DiagnosticWarn", col.red:lighten(3))
hl.foreground("DiagnosticError", col.red)
hl.foreground("DiagnosticInfo", col.blue)
hl.foreground("DiagnosticHint", col.magenta)
hl.foreground("DiagnosticUnderlineWarn", col.red:lighten(3), { deco.UCL })
hl.foreground("DiagnosticUnderlineError", col.red, { deco.UCL })
hl.foreground("DiagnosticUnderlineInfo", col.blue, { deco.UCL })
hl.foreground("DiagnosticUnderlineHint", col.magenta, { deco.UCL })

---LSP HIGHLIGHTS
hl.link("LspDiagnosticsSignWarn", "DiagnosticSignHint")
hl.link("LspDiagnosticsSignError", "DiagnosticSignHint")
hl.link("LspDiagnosticsSignInfo", "DiagnosticSignHint")
hl.link("LspDiagnosticsSignHint", "DiagnosticSignHint")
hl.short_set("LspReferenceText", col.black:lighten(3), col.magenta:brighten(3), { deco.B })
hl.short_set("LspReferenceRead", col.black:lighten(3), col.blue:brighten(3), { deco.B })
hl.short_set("LspReferenceWrite", col.black:lighten(3), col.magenta:increase_red(10):decrease_blue(5), { deco.B })
hl.short_set("LspSignatureActiveParameter", col.black:lighten(3), col.cyan:brighten(3), { deco.B })

---TABLINE HIGHLIGHTS
hl.short_set("TabLine", col.black, col.blue)
hl.short_set("TabLineFill", col.black, col.blue)
hl.short_set("TabLineSel", col.blue, col.black, { deco.B })

---TABLINE HIGHLIGHTS
hl.link("StatusLine", "TabLineFill")
hl.foreground("StatusLineNC", col.blue)

---WINDOW HIGHLIGHTS
hl.link("WinSeparator", "VertSplit")
hl.foreground("Title", col.black:brighten(4):lighten(20), { deco.B })
hl.foreground("VertSplit", col.bright_black)
hl.foreground("MsgSeparator", col.magenta)

---REGULAR SYNTAX HIGHLIGHTS
hl.foreground("Boolean", col.bright_magenta)
hl.foreground("Character", col.green:lighten(5))
hl.foreground("Comment", col.bright_black:brighten(5):lighten(20))
hl.foreground("SpecialComment", col.yellow:increase_red(3):darken(3))
hl.foreground("Conceal", col.bright_black:lighten(2))
hl.foreground("Conditional", col.red)
hl.foreground("Constant", col.red:increase_red(3):darken(2))
hl.foreground("Decorator", col.yellow)
hl.foreground("Define", col.magenta)
hl.foreground("Delimeter", col.blue)
hl.foreground("Exception", col.bright_green)
hl.foreground("Float", col.magenta:increase_blue(20):desaturate(25):spin(0.1))
hl.foreground("Function", col.magenta:darken(2))
hl.foreground("Identifier", col.bright_green)
hl.foreground("Include", col.blue:darken(4):increase_blue(2))
hl.foreground("Keyword", col.blue:increase_green(5):darken(5):increase_blue(15))
hl.foreground("Label", col.red)
hl.foreground("Number", col.bright_cyan)
hl.foreground("Operator", col.cyan)
hl.foreground("PreProc", col.red:darken(3):increase_red(1))
hl.foreground("Repeat", col.bright_magenta)
hl.foreground("Special", col.bright_red)
hl.foreground("SpecialChar", col.magenta)
hl.foreground("Statement", col.red)
hl.foreground("StorageClass", col.red:darken(5))
hl.foreground("String", col.green)
hl.foreground("Structure", col.bright_blue)
hl.foreground("Tag", col.blue)
hl.foreground("Todo", col.yellow)
hl.foreground("Type", col.red)
hl.foreground("Typedef", col.magenta)
hl.foreground("Macro", col.red:lighten(5))
hl.foreground("Exception", col.yellow:darken(2))
hl.foreground("NonText", col.bright_black:lighten(5))
hl.background("MatchParen", col.black:lighten(8), { deco.B })

---TREESITTER SYNTAX HIGHLIGHTS
hl.set("TSStrong", { deco.B })
hl.set("TSEmphasis", { deco.I })
hl.set("TSUnderline", { deco.ULN })
hl.set("TSStrike", { deco.ST })
hl.link("@text.uri", "TSURI")
hl.link("@property", "TSProperty")
hl.link("TSBoolean", "Boolean")
hl.link("TSCharacter", "Character")
hl.link("TSConditional", "Conditional")
hl.link("TSConstant", "Constant")
hl.link("TSConstMacro", "Macro")
hl.link("TSError", "Error")
hl.link("TSException", "Exception")
hl.link("TSFloat", "Float")
hl.link("TSInclude", "Include")
hl.link("TSKeyword", "Keyword")
hl.link("TSRepeat", "Repeat")
hl.link("TSString", "String")
hl.link("TSTag", "Tag")
hl.link("TSLabel", "Label")
hl.link("TSComment", "Comment")
hl.link("TSFunction", "Function")
hl.link("TSNumber", "Number")
hl.link("TSOperator", "Operator")
hl.link("TSType", "Type")
hl.foreground("TSConstructor", col.bright_blue)
hl.foreground("TSAnnotation", col.yellow)
hl.foreground("TSAttribute", col.blue)
hl.foreground("TSConstBuiltin", col.yellow:darken(5))
hl.foreground("TSField", col.yellow:increase_red(5))
hl.foreground("TSFuncBuiltin", col.bright_magenta, { deco.B })
hl.foreground("TSFuncMacro", col.red:increase_red(4):lighten(3))
hl.foreground("TSLiteral", col.green:decrease_green(5):darken(2))
hl.foreground("TSTypeBuiltin", col.bright_green:darken(2))
hl.foreground("TSVariable", col.green:increase_red(2):increase_green(2))
hl.foreground("TSText", col.white)
hl.foreground("TSURI", col.bright_red, { deco.ULN })
hl.foreground("TSProperty", col.green:increase_green(5):decrease_blue(1))
hl.foreground("TSKeywordFunction", col.blue:darken(5))
hl.foreground("TSSymbol", col.cyan, { deco.B })
hl.foreground("TSKeywordOperator", col.cyan:darken(3))
hl.foreground("TSMethod", col.magenta:brighten(2):spin(10))
hl.foreground("TSNamespace", col.bright_blue:desaturate(1.5))
hl.foreground("TSParameter", col.yellow:increase_red(6))
hl.foreground("TSParameterReference", col.bright_cyan)
hl.foreground("TSPunctDelimiter", col.bright_yellow:darken(3))
hl.foreground("TSPunctBracket", col.red:brighten(4))
hl.foreground("TSPunctSpecial", col.bright_red:lighten(6))
hl.foreground("TSStringRegex", col.yellow:increase_red(20))
hl.foreground("TSStringEscape", col.yellow)
hl.foreground("TSTagDelimiter", col.bright_blue)
hl.foreground("TSTitle", col.bright_red:darken(2))
hl.foreground("TSVariableBuiltin", col.yellow)
hl.background("TSCurrentScope", col.black, { deco.I })
hl.background("TreesitterContext", col.black:brighten(0.5):lighten(2))

---HLSLENS HIGHLIGHTS
hl.short_set("HlSearchLens", col.black:lighten(5), col.blue:brighten(5))
hl.short_set("HlSearchNear", col.black:lighten(5), col.cyan:brighten(5), { deco.B })
hl.short_set("HlSearchFloat", col.black:lighten(5), col.magenta:brighten(5))
hl.short_set("HlSearchLensNear", col.yellow:darken(3), col.black, { deco.B })

---TELESCOPE HIGHLIGHTS
hl.link("TelescopePreviewBorder", "FloatBorder")
hl.short_set("TelescopePreviewLine", col.black:darken(1), col.blue)
hl.short_set("TelescopePreviewNormal", col.black:darken(1), col.white:darken(10))
hl.short_set("TelescopePreviewTitle", col.blue, col.black)
hl.short_set("TelescopeResultsNormal", col.black:darken(2), col.white:darken(10))
hl.short_set("TelescopeResultsBorder", col.black:darken(2), col.black:darken(2))
hl.short_set("TelescopeResultsTitle", col.green, col.black)
hl.short_set("TelescopeSelection", col.black, col.bright_cyan)
hl.short_set("TelescopeSelectionCaret", col.black, col.bright_red)
hl.short_set("TelescopePromptNormal", col.bright_black:darken(1.5), col.white:darken(10))
hl.short_set("TelescopePromptBorder", col.bright_black:darken(1.5), col.bright_black:darken(1.5))
hl.short_set("TelescopePromptTitle", col.red, col.black)
hl.short_set("TelescopePromptPrefix", col.bright_black:darken(1.5), col.red)
hl.short_set("TelescopePromptCounter", col.bright_black:darken(1.5), col.magenta:increase_red(10):decrease_blue(5), { deco.B })
hl.foreground("TelescopeMatching", col.magenta:increase_red(10):decrease_blue(5), { deco.B })

---FIDGET HIGHLIGHTS
hl.foreground("FidgetTitle", col.bright_green, { deco.B })
hl.foreground("FidgetTask", col.black:lighten(5))

---RNVIMR HIGHLIGHTS
hl.short_set("RnvimrNormal", col.bright_black:darken(3), col.white:darken(10))

---SCROLLBAR HIGHLIGHTS
hl.foreground("ScrollbarHint", col.magenta)
hl.foreground("ScrollbarInfo", col.blue)
hl.foreground("ScrollbarMisc", col.magenta:increase_red(10):decrease_blue(5))
hl.foreground("ScrollbarWarn", col.red:lighten(3))
hl.foreground("ScrollbarError", col.red)
hl.foreground("ScrollbarCursor", col.bright_cyan)
hl.foreground("ScrollbarGitAdd", col.blue)
hl.foreground("ScrollbarGitChange", col.magenta)
hl.foreground("ScrollbarGitDelete", col.red)
hl.foreground("ScrollbarSearch", col.yellow)
hl.foreground("ScrollbarHandle", col.blue)
hl.foreground("ScrollbarHintHandle", col.bright_magenta)
hl.foreground("ScrollbarInfoHandle", col.bright_blue)
hl.foreground("ScrollbarMiscHandle", col.cyan)
hl.foreground("ScrollbarWarnHandle", col.bright_red:darken(2))
hl.foreground("ScrollbarErrorHandle", col.bright_red:darken(3))
hl.foreground("ScrollbarGitAddHandle", col.blue:brighten(3))
hl.foreground("ScrollbarSearchHandle", col.bright_yellow:brighten(3))
hl.foreground("ScrollbarGitChangeHandle", col.bright_magenta:brighten(2))
hl.foreground("ScrollbarGitDeleteHandle", col.bright_red:brighten(3))
hl.short_set("ScrollbarCursorHandle", col.bright_black:lighten(4), col.bright_cyan)

---BLANKLINE HIGHLIGHTS
hl.clear("IndentBlanklineSpaceChar")
hl.clear("IndentBlanklineSpaceCharBlankline")
hl.foreground("IndentBlanklineChar", col.bright_black:brighten(4))
hl.foreground("IndentBlanklineContextChar", col.blue)
hl.background("IndentBlanklineContextStart", col.black:lighten(1.5):brighten(1))

---GITSIGNS HIGHLIGHTS
hl.foreground("GitSignsChange", col.magenta:darken(5):decrease_blue(5))
hl.foreground("GitSignsChangeNr", col.bright_magenta)
hl.foreground("GitSignsChangeLn", col.magenta:brighten(3))
hl.foreground("GitSignsAdd", col.blue)
hl.foreground("GitSignsAddNr", col.bright_blue)
hl.foreground("GitSignsAddLn", col.blue)
hl.foreground("GitSignsDeleteLn", col.red)
hl.foreground("GitSignsDelete", col.bright_red)
hl.foreground("GitSignsDeleteNr", col.red:brighten(2))

---TOGGLETERM HIGHLIGHTS
hl.link("ToggleTerm1NormalFloat", "NormalFloat")
hl.link("ToggleTerm1FloatBorder", "FloatBorder")

---VIRTCOLUMN HIGHLIGHTS
hl.foreground("VirtColumn", col.blue)

---WHICHKEY HIGHLIGHTS
hl.foreground("WhichKeyGroup", col.red, { deco.B })
hl.foreground("WhichKeyDesc", col.yellow)
hl.foreground("WhichKeySeparator", col.blue)
hl.foreground("WhichKeyValue", col.white:darken(25))
hl.foreground("WhichKey", col.magenta)
hl.background("WhichKeyFloat", col.black:darken(1))
hl.background("WhichKeyBorder", col.black:darken(1))

---LIGHTBULB HIGHLIGHTS
hl.foreground("LightBulbFloatWin", col.bright_yellow)
hl.foreground("LightBulbVirtualText", col.yellow)
hl.foreground("LightBulbSign", col.yellow)

---CMP HIGHLIGHTS
hl.link("CmpItemKindClass", "Type")
hl.link("CmpItemKindConstant", "Constant")
hl.link("CmpItemKindConstructor", "TSConstructor")
hl.link("CmpItemKindFunction", "Function")
hl.link("CmpItemKindKeyword", "Keyword")
hl.link("CmpItemKindOperator", "Operator")
hl.link("CmpItemKindProperty", "TSProperty")
hl.link("CmpItemKindStruct", "Structure")
hl.link("CmpItemKindTypeParameter", "TSParameter")
hl.link("CmpItemKindUnit", "Number")
hl.link("CmpItemKindValue", "String")
hl.link("CmpItemKindVariable", "Identifier")
hl.foreground("CmpItemKindColor", col.blue)
hl.foreground("CmpItemAbbr", col.white:darken(10))
hl.foreground("CmpItemMenu", col.blue)
hl.foreground("CmpItemKindText", col.bright_blue)
hl.foreground("CmpItemKindReference", col.bright_red)
hl.foreground("CmpItemKindMethod", col.bright_red:decrease_red(12))
hl.foreground("CmpItemKindInterface", col.magenta)
hl.foreground("CmpItemKindEnum", col.bright_cyan)
hl.foreground("CmpItemKindEnumMember", col.magenta:decrease_blue(12))
hl.foreground("CmpItemKindEvent", col.blue:increase_blue(8))
hl.foreground("CmpItemKindField", col.yellow:saturate(3))
hl.foreground("CmpItemKindFile", col.bright_yellow)
hl.foreground("CmpItemKindFolder", col.bright_yellow)
hl.foreground("CmpItemKindModule", col.bright_blue)
hl.foreground("CmpItemKindSnippet", col.yellow)
hl.foreground("CmpItemAbbrDeprecated", col.black:lighten(10):brighten(10))
hl.foreground("CmpItemAbbrMatch", col.green)
hl.foreground("CmpItemAbbrMatchFuzzy", col.bright_yellow)
hl.foreground("CmpItemKind", col.black:lighten(10):brighten(10))

---RAINBOW HIGHLIGHTS
hl.foreground("rainbowcol1", col.bright_magenta:brighten(10):increase_blue(20))
hl.foreground("rainbowcol2", col.bright_blue:brighten(10))
hl.foreground("rainbowcol3", col.blue:brighten(10))
hl.foreground("rainbowcol4", col.bright_green:brighten(10))
hl.foreground("rainbowcol5", col.bright_yellow:brighten(10))
hl.foreground("rainbowcol6", col.bright_red:desaturate(8):brighten(10))
hl.foreground("rainbowcol7", col.bright_red:brighten(10))

---NVIMTREE HIGHLIGHTS
hl.link("NvimTreeCursorColumn", "NvimTreeCursorColumn")
hl.link("NvimTreeFolderName", "NvimTreeFolderIcon")
hl.short_set("NvimTreeWindowPicker", col.black:lighten(3):brighten(1), col.blue)
hl.short_set("NvimTreeVertSplit", col.black:darken(2), col.black:darken(2))
hl.short_set("NvimTreeWinSeparator", col.black:darken(2), col.black:darken(2))
hl.short_set("NvimTreeNormal", col.black:darken(2), col.white:darken(10))
hl.short_set("NvimTreeNormalNC", col.black:darken(2), col.white:darken(10))
hl.foreground("NvimTreeBookmark", col.yellow)
hl.foreground("NvimTreeClosedFolderIcon", col.bright_magenta)
hl.foreground("NvimTreeCursorLineNr", col.bright_green)
hl.foreground("NvimTreeEmptyFolderName", col.bright_magenta:desaturate(20))
hl.foreground("NvimTreeExecFile", col.magenta:spin(0.1))
hl.foreground("NvimTreeFileDeleted", col.bright_red)
hl.foreground("NvimTreeFileDirty", col.cyan)
hl.foreground("NvimTreeFileIgnored", col.bright_black)
hl.foreground("NvimTreeFileMerge", col.bright_green)
hl.foreground("NvimTreeFileNew", col.yellow)
hl.foreground("NvimTreeFileRenamed", col.bright_blue)
hl.foreground("NvimTreeFileStaged", col.magenta:spin(0.1))
hl.foreground("NvimTreeFolderIcon", col.bright_magenta)
hl.foreground("NvimTreeGitDeleted", col.red)
hl.foreground("NvimTreeGitDirty", col.cyan)
hl.foreground("NvimTreeGitIgnored", col.bright_black)
hl.foreground("NvimTreeGitMerge", col.bright_cyan)
hl.foreground("NvimTreeGitNew", col.yellow)
hl.foreground("NvimTreeGitRenamed", col.bright_blue)
hl.foreground("NvimTreeGitStaged", col.magenta:spin(0.1))
hl.foreground("NvimTreeImageFile", col.bright_magenta)
hl.foreground("NvimTreeIndentMarker", col.black:brighten(1):lighten(5))
hl.foreground("NvimTreePopup", col.blue)
hl.foreground("NvimTreeRootFolder", col.red, { deco.B })
hl.foreground("NvimTreeSymlink", col.cyan)
hl.background("NvimTreeCursorLine", col.black:lighten(1))

---NOTIFY HIGHLIGHTS
---PACKER HIGHLIGHTS

---NEOGIT HIGHLIGHTS
---TODOS HIGHLIGHTS

---TROUBLE HIGHLIGHTS
---ALPHA HIGHLIGHTS
---DEVICONS HIGHLIGHTS

---NVIM HIGHLIGHTS
---NAVIC HIGHLIGHTS

---vim:filetype=lua