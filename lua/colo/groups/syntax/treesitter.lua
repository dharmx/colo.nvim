---@module "colo.groups.syntax.treesitter"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(c)
  return {
    TreesitterContext = { background = c.black:brighten(0.5):lighten(2) },
    ["@lua.parameter.self"] = { foreground = c.bright_yellow:increase_red(2) },
    ["@lua.constant.vim"] = { link = "@constant" },
    ["@lua.constant.cmd"] = { link = "@namespace" },
    ["@lua.function.pcall"] = { link = "@macro" },
    ["@boolean"] = { link = "Boolean" },
    ["@character"] = { link = "Character" },
    ["@character.special"] = {},
    ["@comment"] = { link = "Comment" },
    ["@conditional"] = { link = "Conditional" },
    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { foreground = c.yellow:darken(5) },
    ["@constant.macro"] = { foreground = c.red:decrease_red(8) },
    ["@constructor"] = { foreground = c.bright_blue },
    ["@exception"] = { link = "Exception" },
    ["@field"] = { foreground = c.bright_green },
    ["@float"] = { link = "Float" },
    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { foreground = c.bright_green },
    ["@function.macro"] = { foreground = c.red:increase_red(5) },
    ["@include"] = { link = "Include" },
    ["@keyword"] = { link = "Keyword" },
    ["@keyword.return"] = { link = "Keyword" },
    ["@keyword.operator"] = { foreground = c.cyan },
    ["@keyword.function"] = { foreground = c.bright_red },
    ["@label"] = { link = "Label" },
    ["@macro"] = { link = "Macro" },
    ["@method"] = { foreground = c.bright_magenta },
    ["@namespace"] = { foreground = c.bright_blue:desaturate(1.5) },
    ["@number"] = { link = "Number" },
    ["@operator"] = { link = "Operator" },
    ["@parameter"] = { foreground = c.yellow:increase_red(6) },
    ["@preproc"] = { link = "PreProc" },
    ["@property"] = { foreground = c.bright_cyan },
    ["@punctuation.delimiter"] = { link = "Delimeter" },
    ["@punctuation.bracket"] = { foreground = c.red:brighten(5) },
    ["@punctuation"] = { link = "Delimeter" },
    ["@repeat"] = { link = "Repeat" },
    ["@storageclass"] = { link = "StorageClass" },
    ["@string"] = { link = "String" },
    ["@string.escape"] = { foreground = c.yellow:decrease_red(10) },
    ["@string.regex"] = { foreground = c.yellow:increase_red(10):decrease_blue(5) },
    ["@string.special"] = { foreground = c.bright_yellow },
    ["@structure"] = { link = "Structure" },
    ["@tag"] = { link = "Tag" },
    ["@text"] = { foreground = c.white },
    ["@text.literal"] = { foreground = c.green:decrease_green(5) },
    ["@text.reference"] = { foreground = c.blue },
    ["@text.title"] = { foreground = c.bright_red:darken(2) },
    ["@text.todo"] = { foreground = c.yellow },
    ["@text.uri"] = { foreground = c.bright_red },
    ["@type"] = { link = "Type" },
    ["@variable"] = { foreground = c.white },
    ["@type.definition"] = { link = "Typedef" },
    ["@text.underline"] = { link = "Underlined" },
    ["@debug"] = { foreground = c.blue:decrease_blue(10) },
    ["@define"] = { link = "Define" },
  }
end

return M

-- vim:filetype=lua
