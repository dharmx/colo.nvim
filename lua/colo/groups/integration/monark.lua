local M = {}

function M.prime(c)
  return {
    MonarkNormal = { foreground = c.green },
    MonarkVisual = { foreground = c.yellow },
    MonarkVisualLine = { foreground = c.red },
    MonarkVisualBlock = { foreground = c.bright_yellow },
    MonarkSelect = { foreground = c.bright_cyan },
    MonarkInsert = { foreground = c.blue },
    MonarkReplace = { foreground = c.magenta },
    MonarkTerminal = { foreground = c.bright_cyan },
    MonarkCommand = { foreground = c.bright_blue },
    monarkCommand = { link = "MonarkCommand" },
    monarkInsert = { link = "MonarkInsert" },
    monarkNormal = { link = "MonarkNormal" },
    monarkReplace = { link = "MonarkReplace" },
    monarkVisual = { link = "MonarkVisual" },
  }
end

return M
