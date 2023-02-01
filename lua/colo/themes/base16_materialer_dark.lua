---@module "colo.themes.base16_materialer_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_materialer",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-materialer.json",
  background = "dark",
  black = Color:new({ hexcode = "#212121" }),
  red = Color:new({ hexcode = "#F07178" }),
  green = Color:new({ hexcode = "#C3E88D" }),
  yellow = Color:new({ hexcode = "#FFCB6B" }),
  blue = Color:new({ hexcode = "#82AAFF" }),
  magenta = Color:new({ hexcode = "#C792EA" }),
  cyan = Color:new({ hexcode = "#89DDFF" }),
  white = Color:new({ hexcode = "#EEFFFF" }),
  bright_black = Color:new({ hexcode = "#4A4A4A" }),
  bright_red = Color:new({ hexcode = "#F07178" }),
  bright_green = Color:new({ hexcode = "#C3E88D" }),
  bright_yellow = Color:new({ hexcode = "#FFCB6B" }),
  bright_blue = Color:new({ hexcode = "#82AAFF" }),
  bright_magenta = Color:new({ hexcode = "#C792EA" }),
  bright_cyan = Color:new({ hexcode = "#89DDFF" }),
  bright_white = Color:new({ hexcode = "#FFFFFF" }),
}

---vim:filetype=lua
