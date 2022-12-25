---@module "colo.themes.dkeg_slate_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "dkeg_slate",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/dkeg-slate.json",
  background = "dark",
  black = Color:new({ hexcode = "#242a2b" }),
  red = Color:new({ hexcode = "#674839" }),
  green = Color:new({ hexcode = "#6e794f" }),
  yellow = Color:new({ hexcode = "#8d8150" }),
  blue = Color:new({ hexcode = "#3b474e" }),
  magenta = Color:new({ hexcode = "#554c41" }),
  cyan = Color:new({ hexcode = "#495355" }),
  white = Color:new({ hexcode = "#939381" }),
  bright_black = Color:new({ hexcode = "#939381" }),
  bright_red = Color:new({ hexcode = "#674839" }),
  bright_green = Color:new({ hexcode = "#6e794f" }),
  bright_yellow = Color:new({ hexcode = "#8d8150" }),
  bright_blue = Color:new({ hexcode = "#3b474e" }),
  bright_magenta = Color:new({ hexcode = "#554c41" }),
  bright_cyan = Color:new({ hexcode = "#495355" }),
  bright_white = Color:new({ hexcode = "#abab9c" }),
}

---vim:filetype=lua
