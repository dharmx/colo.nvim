---@module "colo.groups.syntax.regular"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(c)
  return {
    Whitespace = { foreground = c.black:lighten(4):brighten(2) },
    Boolean = { foreground = c.red },
    Character = { foreground = c.green:lighten(5) },
    Comment = { foreground = c.bright_black:brighten(5):lighten(20) },
    SpecialComment = { foreground = c.yellow:increase_red(3):darken(3) },
    Conceal = { foreground = c.bright_black:lighten(2) },
    Conditional = { foreground = c.red },
    Constant = { foreground = c.red:increase_red(3):darken(2) },
    Decorator = { foreground = c.yellow },
    Define = { foreground = c.magenta },
    Delimeter = { foreground = c.blue },
    Exception = { foreground = c.bright_green },
    Float = { foreground = c.magenta:increase_blue(20):desaturate(25):spin(0.1) },
    Function = { foreground = c.magenta:darken(2) },
    Identifier = { foreground = c.bright_green },
    Include = { foreground = c.blue:darken(4):increase_blue(2) },
    Keyword = { foreground = c.blue:increase_green(5):darken(5):increase_blue(15) },
    Label = { foreground = c.red },
    Number = { foreground = c.bright_cyan },
    Operator = { foreground = c.cyan },
    PreProc = { foreground = c.red:darken(3):increase_red(1) },
    Repeat = { foreground = c.bright_magenta },
    Special = { foreground = c.bright_red },
    SpecialChar = { foreground = c.magenta },
    SpecialKey = { foreground = c.yellow },
    Statement = { foreground = c.red },
    StorageClass = { foreground = c.red:darken(5) },
    String = { foreground = c.green },
    Structure = { foreground = c.bright_blue },
    Tag = { foreground = c.blue },
    Todo = { foreground = c.yellow },
    Type = { foreground = c.red },
    Typedef = { foreground = c.magenta },
    Macro = { foreground = c.red:lighten(5) },
    NonText = { foreground = c.bright_black:lighten(5) },
    MatchParen = { background = c.black:lighten(8) },
  }
end

return M

-- vim:filetype=lua
