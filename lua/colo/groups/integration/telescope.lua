local M = {}

function M.get(col, deco)
  return {
    TelescopePreviewBorder = { background = col.black:darken(1), foreground = col.black:darken(1) },
    TelescopePreviewNormal = { background = col.black:darken(1), foreground = col.white:darken(10) },
    TelescopePreviewTitle = { background = col.blue, foreground = col.black },
    TelescopeResultsNormal = { background = col.black:darken(2), foreground = col.white:darken(10) },
    TelescopeResultsBorder = { background = col.black:darken(2), foreground = col.black:darken(2) },
    TelescopeResultsTitle = { background = col.green, foreground = col.black },
    TelescopeSelection = { background = col.black, foreground = col.bright_cyan },
    TelescopeSelectionCaret = { background = col.black, foreground = col.bright_red },
    TelescopePromptNormal = { background = col.bright_black:darken(1.5), foreground = col.white:darken(10) },
    TelescopePromptBorder = { background = col.bright_black:darken(1.5), foreground = col.bright_black:darken(1.5) },
    TelescopePromptTitle = { background = col.red, foreground = col.black },
    TelescopePromptPrefix = { background = col.bright_black:darken(1.5), foreground = col.red },
    TelescopePromptCounter = { background = col.bright_black:darken(1.5), foreground = col.magenta:spin(0.1) },
    TelescopeMatching = { foreground = col.magenta:increase_red(10):decrease_blue(5) },
    TelescopePreviewLine = { background = col.black:lighten(1.5):brighten(1) },
  }
end

return M

---vim:filetype=lua
