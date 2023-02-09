local M = {}

function M.prime(c)
  return {
    WildMenu = { background = c.blue, foreground = c.black },
    Substitute = { background = c.bright_magenta, foreground = c.black },
    Search = { background = c.yellow, foreground = c.black },
    IncSearch = { background = c.cyan, foreground = c.black },
  }
end

return M
