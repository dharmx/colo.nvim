local M = {}

function M.prime(c)
  return {
    HlSearchLens = { background = c.black:lighten(5), foreground = c.blue:brighten(5) },
    HlSearchNear = { background = c.black:lighten(5), foreground = c.cyan:brighten(5) },
    HlSearchFloat = { background = c.black:lighten(5), foreground = c.magenta:brighten(5) },
    HlSearchLensNear = { background = c.yellow:darken(3), foreground = c.black },
  }
end

return M
