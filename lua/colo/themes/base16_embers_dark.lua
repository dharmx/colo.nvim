---@module "colo.themes.base16_embers_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_embers",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-embers.json",
  background = "dark",
  black = Color:new({ hex = "#16130F" }),
  red = Color:new({ hex = "#826D57" }),
  green = Color:new({ hex = "#57826D" }),
  yellow = Color:new({ hex = "#6D8257" }),
  blue = Color:new({ hex = "#6D5782" }),
  magenta = Color:new({ hex = "#82576D" }),
  cyan = Color:new({ hex = "#576D82" }),
  white = Color:new({ hex = "#A39A90" }),
  bright_black = Color:new({ hex = "#5A5047" }),
  bright_red = Color:new({ hex = "#826D57" }),
  bright_green = Color:new({ hex = "#57826D" }),
  bright_yellow = Color:new({ hex = "#6D8257" }),
  bright_blue = Color:new({ hex = "#6D5782" }),
  bright_magenta = Color:new({ hex = "#82576D" }),
  bright_cyan = Color:new({ hex = "#576D82" }),
  bright_white = Color:new({ hex = "#DBD6D1" }),
}

---vim:filetype=lua
