---@module "colo.groups.integration.todo"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(c)
  return {
    TodoBgCHORE = { background = c.cyan, foreground = c.bright_black },
    TodoBgCLEAN = { background = c.blue, foreground = c.bright_black },
    TodoBgDEMO = { background = c.bright_blue, foreground = c.bright_black },
    TodoBgFIX = { background = c.yellow, foreground = c.bright_black },
    TodoBgHACK = { background = c.green, foreground = c.bright_black },
    TodoBgIMPROVE = { background = c.bright_blue, foreground = c.bright_black },
    TodoBgNOTE = { background = c.bright_green, foreground = c.bright_black },
    TodoBgPERF = { background = c.bright_yellow, foreground = c.bright_black },
    TodoBgTEST = { background = c.bright_cyan, foreground = c.bright_black },
    TodoBgTODO = { background = c.magenta, foreground = c.bright_black },
    TodoBgUPDATE = { background = c.bright_magenta, foreground = c.bright_black },
    TodoBgWANTS = { background = c.yellow:brighten(3), foreground = c.bright_black },
    TodoBgWARN = { background = c.bright_red:decrease_red(10), foreground = c.bright_black },
    TodoBgBUG = { background = c.red, foreground = c.bright_black },
    TodoFgCHORE = { foreground = c.cyan },
    TodoFgCLEAN = { foreground = c.blue },
    TodoFgDEMO = { foreground = c.bright_blue },
    TodoFgFIX = { foreground = c.yellow },
    TodoFgHACK = { foreground = c.green },
    TodoFgIMPROVE = { foreground = c.bright_blue },
    TodoFgNOTE = { foreground = c.bright_green },
    TodoFgPERF = { foreground = c.bright_yellow },
    TodoFgTEST = { foreground = c.bright_cyan },
    TodoFgTODO = { foreground = c.magenta },
    TodoFgUPDATE = { foreground = c.bright_magenta },
    TodoFgWANTS = { foreground = c.yellow:brighten(3) },
    TodoFgWARN = { foreground = c.bright_red:decrease_red(10) },
    TodoFgBUG = { foreground = c.red },
    TodoSignCHORE = { background = c.black, foreground = c.cyan },
    TodoSignCLEAN = { background = c.black, foreground = c.blue },
    TodoSignDEMO = { background = c.black, foreground = c.bright_blue },
    TodoSignFIX = { background = c.black, foreground = c.bright_yellow },
    TodoSignHACK = { background = c.black, foreground = c.green },
    TodoSignIMPROVE = { background = c.black, foreground = c.bright_blue },
    TodoSignNOTE = { background = c.black, foreground = c.bright_green },
    TodoSignPERF = { background = c.black, foreground = c.bright_yellow },
    TodoSignTEST = { background = c.black, foreground = c.bright_cyan },
    TodoSignTODO = { background = c.black, foreground = c.magenta },
    TodoSignUPDATE = { background = c.black, foreground = c.bright_magenta },
    TodoSignWANTS = { background = c.black, foreground = c.yellow:brighten(3) },
    TodoSignWARN = { background = c.black, foreground = c.bright_red:decrease_red(10) },
    TodoSignBUG = { background = c.black, foreground = c.red },
  }
end

return M

-- vim:filetype=lua
