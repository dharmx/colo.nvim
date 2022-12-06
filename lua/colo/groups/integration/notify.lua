local M = {}

function M.get(col, deco)
  return {
    NotifyINFOBody = { background = col.bright_black, foreground = col.blue },
    NotifyINFOBorder = { background = col.bright_black, foreground = col.bright_black },
    NotifyINFOIcon = { background = col.bright_black, foreground = col.bright_blue },
    NotifyINFOTitle = { background = col.bright_black, foreground = col.blue },
    NotifyWARNBody = { background = col.bright_black, foreground = col.yellow },
    NotifyWARNIcon = { background = col.bright_black, foreground = col.bright_yellow },
    NotifyWARNTitle = { background = col.bright_black, foreground = col.yellow },
    NotifyWARNBorder = { background = col.bright_black, foreground = col.bright_black },
    NotifyDEBUGBody = { background = col.bright_black, foreground = col.magenta },
    NotifyDEBUGIcon = { background = col.bright_black, foreground = col.bright_magenta },
    NotifyDEBUGTitle = { background = col.bright_black, foreground = col.magenta },
    NotifyDEBUGBorder = { background = col.bright_black, foreground = col.bright_black },
    NotifyERRORBody = { background = col.bright_black, foreground = col.red },
    NotifyERRORIcon = { background = col.bright_black, foreground = col.bright_red },
    NotifyERRORTitle = { background = col.bright_black, foreground = col.red },
    NotifyERRORBorder = { background = col.bright_black, foreground = col.bright_black },
    NotifyTRACEBody = { background = col.bright_black, foreground = col.green },
    NotifyTRACEIcon = { background = col.bright_black, foreground = col.bright_green },
    NotifyTRACETitle = { background = col.bright_black, foreground = col.green },
    NotifyTRACEBorder = { background = col.bright_black, foreground = col.bright_black },
  }
end

return M

---vim:filetype=lua
