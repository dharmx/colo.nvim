---@module "colo.groups.integration.todo"
---@author dharmx
---@license GPL-3.0

local col = require("colo.api").theme.current()

return {
  TodoBgCHORE = { background = col.cyan, foreground = col.bright_black },
  TodoBgCLEAN = { background = col.blue, foreground = col.bright_black },
  TodoBgDEMO = { background = col.bright_blue, foreground = col.bright_black },
  TodoBgFIX = { background = col.yellow, foreground = col.bright_black },
  TodoBgHACK = { background = col.green, foreground = col.bright_black },
  TodoBgIMPROVE = { background = col.bright_blue, foreground = col.bright_black },
  TodoBgNOTE = { background = col.bright_green, foreground = col.bright_black },
  TodoBgPERF = { background = col.bright_yellow, foreground = col.bright_black },
  TodoBgTEST = { background = col.bright_cyan, foreground = col.bright_black },
  TodoBgTODO = { background = col.magenta, foreground = col.bright_black },
  TodoBgUPDATE = { background = col.bright_magenta, foreground = col.bright_black },
  TodoBgWANTS = { background = col.yellow:brighten(3), foreground = col.bright_black },
  TodoBgWARN = { background = col.bright_red:decrease_red(10), foreground = col.bright_black },
  TodoBgBUG = { background = col.red, foreground = col.bright_black },
  TodoFgCHORE = { foreground = col.cyan },
  TodoFgCLEAN = { foreground = col.blue },
  TodoFgDEMO = { foreground = col.bright_blue },
  TodoFgFIX = { foreground = col.yellow },
  TodoFgHACK = { foreground = col.green },
  TodoFgIMPROVE = { foreground = col.bright_blue },
  TodoFgNOTE = { foreground = col.bright_green },
  TodoFgPERF = { foreground = col.bright_yellow },
  TodoFgTEST = { foreground = col.bright_cyan },
  TodoFgTODO = { foreground = col.magenta },
  TodoFgUPDATE = { foreground = col.bright_magenta },
  TodoFgWANTS = { foreground = col.yellow:brighten(3) },
  TodoFgWARN = { foreground = col.bright_red:decrease_red(10) },
  TodoFgBUG = { foreground = col.red },
  TodoSignCHORE = { background = col.black, foreground = col.cyan },
  TodoSignCLEAN = { background = col.black, foreground = col.blue },
  TodoSignDEMO = { background = col.black, foreground = col.bright_blue },
  TodoSignFIX = { background = col.black, foreground = col.bright_yellow },
  TodoSignHACK = { background = col.black, foreground = col.green },
  TodoSignIMPROVE = { background = col.black, foreground = col.bright_blue },
  TodoSignNOTE = { background = col.black, foreground = col.bright_green },
  TodoSignPERF = { background = col.black, foreground = col.bright_yellow },
  TodoSignTEST = { background = col.black, foreground = col.bright_cyan },
  TodoSignTODO = { background = col.black, foreground = col.magenta },
  TodoSignUPDATE = { background = col.black, foreground = col.bright_magenta },
  TodoSignWANTS = { background = col.black, foreground = col.yellow:brighten(3) },
  TodoSignWARN = { background = col.black, foreground = col.bright_red:decrease_red(10) },
  TodoSignBUG = { background = col.black, foreground = col.red },
}

---vim:filetype=lua
