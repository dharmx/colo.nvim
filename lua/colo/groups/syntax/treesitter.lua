local M = {}

function M.prime(c)
  return {
    ["@lsp.type.variable.lua"] = {},
    ["@lsp.type.function.lua"] = {},
    
    ["@lua.parameter.self"] = { foreground = c.bright_yellow:increase_red(2) },
    ["@lua.constant.vim"] = { link = "@constant" },
    ["@lua.constant.cmd"] = { link = "@namespace" },
    ["@function.pcall.lua"] = { link = "@macro" },

    ["@boolean"] = { link = "Boolean" },
    ["@character"] = { link = "Character" },
    ["@comment"] = { link = "Comment" },
    ["@conditional"] = { link = "Conditional" },
    ["@constant"] = { link = "Constant" },
    ["@constructor"] = { foreground = c.bright_blue },
    ["@exception"] = { link = "Exception" },
    ["@field"] = { foreground = c.bright_green },
    ["@float"] = { link = "Float" },
    ["@function"] = { link = "Function" },
    ["@keyword"] = { link = "Keyword" },
    ["@include"] = { link = "Include" },
    ["@label"] = { link = "Label" },
    ["@macro"] = { link = "Macro" },
    ["@method"] = { foreground = c.bright_magenta },
    ["@namespace"] = { foreground = c.bright_blue:desaturate(1.5) },
    ["@number"] = { link = "Number" },
    ["@operator"] = { link = "Operator" },
    ["@parameter"] = { foreground = c.yellow:increase_red(6) },
    ["@preproc"] = { link = "PreProc" },
    ["@property"] = { foreground = c.bright_cyan },
    ["@repeat"] = { link = "Repeat" },
    ["@punctuation"] = { link = "Delimeter" },
    ["@storageclass"] = { link = "StorageClass" },
    ["@string"] = { link = "String" },
    ["@structure"] = { link = "Structure" },
    ["@tag"] = { link = "Tag" },
    ["@text"] = { foreground = c.white },
    ["@type"] = { link = "Type" },
    ["@variable"] = { foreground = c.white },
    ["@debug"] = { foreground = c.blue:decrease_blue(10) },
    ["@define"] = { link = "Define" },

    ["@character.special"] = {},
    ["@type.definition"] = { link = "Typedef" },

    ["@function.builtin"] = { foreground = c.bright_green },
    ["@function.macro"] = { foreground = c.red:increase_red(5) },

    ["@constant.builtin"] = { foreground = c.yellow:darken(5) },
    ["@constant.macro"] = { foreground = c.red:decrease_red(8) },

    ["@keyword.return"] = { link = "Keyword" },
    ["@keyword.operator"] = { foreground = c.cyan },
    ["@keyword.function"] = { foreground = c.bright_red },

    ["@punctuation.delimiter"] = { link = "Delimeter" },
    ["@punctuation.bracket"] = { foreground = c.red:brighten(5) },

    ["@string.escape"] = { foreground = c.yellow:decrease_red(10) },
    ["@string.regex"] = { foreground = c.yellow:increase_red(10):decrease_blue(5) },
    ["@string.special"] = { foreground = c.bright_yellow },

    ["@text.literal"] = { foreground = c.green:decrease_green(5) },
    ["@text.reference"] = { foreground = c.blue },
    ["@text.title"] = { foreground = c.bright_red:darken(2) },
    ["@text.todo"] = { foreground = c.yellow },
    ["@text.uri"] = { foreground = c.cyan },
    ["@text.underline"] = { link = "Underlined" },

    TreesitterContext = { background = c.black:brighten(0.5):lighten(2) },
  }
end

return M
