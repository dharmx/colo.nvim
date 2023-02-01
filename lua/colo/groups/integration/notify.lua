---@module "colo.groups.integration.notify"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(c)
  return {
    NotifyINFOBody = { background = c.bright_black, foreground = c.blue },
    NotifyINFOBorder = { background = c.bright_black, foreground = c.bright_black },
    NotifyINFOIcon = { background = c.bright_black, foreground = c.bright_blue },
    NotifyINFOTitle = { background = c.bright_black, foreground = c.blue },
    NotifyWARNBody = { background = c.bright_black, foreground = c.yellow },
    NotifyWARNIcon = { background = c.bright_black, foreground = c.bright_yellow },
    NotifyWARNTitle = { background = c.bright_black, foreground = c.yellow },
    NotifyWARNBorder = { background = c.bright_black, foreground = c.bright_black },
    NotifyDEBUGBody = { background = c.bright_black, foreground = c.magenta },
    NotifyDEBUGIcon = { background = c.bright_black, foreground = c.bright_magenta },
    NotifyDEBUGTitle = { background = c.bright_black, foreground = c.magenta },
    NotifyDEBUGBorder = { background = c.bright_black, foreground = c.bright_black },
    NotifyERRORBody = { background = c.bright_black, foreground = c.red },
    NotifyERRORIcon = { background = c.bright_black, foreground = c.bright_red },
    NotifyERRORTitle = { background = c.bright_black, foreground = c.red },
    NotifyERRORBorder = { background = c.bright_black, foreground = c.bright_black },
    NotifyTRACEBody = { background = c.bright_black, foreground = c.green },
    NotifyTRACEIcon = { background = c.bright_black, foreground = c.bright_green },
    NotifyTRACETitle = { background = c.bright_black, foreground = c.green },
    NotifyTRACEBorder = { background = c.bright_black, foreground = c.bright_black },
  }
end

return M

---vim:filetype=lua
