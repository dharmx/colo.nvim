---@module "colo.themes.dkeg_flapr_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "dkeg_flapr",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/dkeg-flapr.json",
  background = "dark",
  black = Color:new({ hexcode = "#2f2832" }),
  red = Color:new({ hexcode = "#885d50" }),
  green = Color:new({ hexcode = "#747965" }),
  yellow = Color:new({ hexcode = "#9a8e80" }),
  blue = Color:new({ hexcode = "#4a4e5a" }),
  magenta = Color:new({ hexcode = "#76675b" }),
  cyan = Color:new({ hexcode = "#59555c" }),
  white = Color:new({ hexcode = "#bcb5b5" }),
  bright_black = Color:new({ hexcode = "#4a3f4e" }),
  bright_red = Color:new({ hexcode = "#885d50" }),
  bright_green = Color:new({ hexcode = "#747965" }),
  bright_yellow = Color:new({ hexcode = "#9a8e80" }),
  bright_blue = Color:new({ hexcode = "#4a4e5a" }),
  bright_magenta = Color:new({ hexcode = "#76675b" }),
  bright_cyan = Color:new({ hexcode = "#59555c" }),
  bright_white = Color:new({ hexcode = "#dddada" }),
}

---vim:filetype=lua
