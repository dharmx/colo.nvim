local M = {}

function M.prime(c)
  return {
    Pmenu = { background = c.black:darken(1.4), foreground = c.white:darken(20) },
    PmenuSel = { background = c.green, foreground = c.bright_black },
    PmenuSbar = { link = "Pmenu" },
    PmenuThumb = { background = c.black:lighten(1) },
  }
end

return M
