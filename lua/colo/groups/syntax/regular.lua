local M = {}

function M.get(col, deco)
  return {
    Boolean = { foreground = col.red },
    Character = { foreground = col.green:lighten(5) },
    Comment = { foreground = col.bright_black:brighten(5):lighten(20) },
    SpecialComment = { foreground = col.yellow:increase_red(3):darken(3) },
    Conceal = { foreground = col.bright_black:lighten(2) },
    Conditional = { foreground = col.red },
    Constant = { foreground = col.red:increase_red(3):darken(2) },
    Decorator = { foreground = col.yellow },
    Define = { foreground = col.magenta },
    Delimeter = { foreground = col.blue },
    Exception = { foreground = col.bright_green },
    Float = { foreground = col.magenta:increase_blue(20):desaturate(25):spin(0.1) },
    Function = { foreground = col.magenta:darken(2) },
    Identifier = { foreground = col.bright_green },
    Include = { foreground = col.blue:darken(4):increase_blue(2) },
    Keyword = { foreground = col.blue:increase_green(5):darken(5):increase_blue(15) },
    Label = { foreground = col.red },
    Number = { foreground = col.bright_cyan },
    Operator = { foreground = col.cyan },
    PreProc = { foreground = col.red:darken(3):increase_red(1) },
    Repeat = { foreground = col.bright_magenta },
    Special = { foreground = col.bright_red },
    SpecialChar = { foreground = col.magenta },
    SpecialKey = { foreground = col.yellow },
    Statement = { foreground = col.red },
    StorageClass = { foreground = col.red:darken(5) },
    String = { foreground = col.green },
    Structure = { foreground = col.bright_blue },
    Tag = { foreground = col.blue },
    Todo = { foreground = col.yellow },
    Type = { foreground = col.red },
    Typedef = { foreground = col.magenta },
    Macro = { foreground = col.red:lighten(5) },
    NonText = { foreground = col.bright_black:lighten(5) },
    MatchParen = { background = col.black:lighten(8) },
  }
end

return M

---vim:filetype=lua
