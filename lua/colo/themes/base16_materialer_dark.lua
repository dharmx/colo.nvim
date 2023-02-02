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
  black = Color:new({ hex = "#212121" }),
  red = Color:new({ hex = "#F07178" }),
  green = Color:new({ hex = "#C3E88D" }),
  yellow = Color:new({ hex = "#FFCB6B" }),
  blue = Color:new({ hex = "#82AAFF" }),
  magenta = Color:new({ hex = "#C792EA" }),
  cyan = Color:new({ hex = "#89DDFF" }),
  white = Color:new({ hex = "#EEFFFF" }),
  bright_black = Color:new({ hex = "#4A4A4A" }),
  bright_red = Color:new({ hex = "#F07178" }),
  bright_green = Color:new({ hex = "#C3E88D" }),
  bright_yellow = Color:new({ hex = "#FFCB6B" }),
  bright_blue = Color:new({ hex = "#82AAFF" }),
  bright_magenta = Color:new({ hex = "#C792EA" }),
  bright_cyan = Color:new({ hex = "#89DDFF" }),
  bright_white = Color:new({ hex = "#FFFFFF" }),
}

-- vim:filetype=lua
