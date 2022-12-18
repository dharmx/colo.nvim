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
  black = Color:new({ hexcode = "#16130F" }),
  red = Color:new({ hexcode = "#826D57" }),
  green = Color:new({ hexcode = "#57826D" }),
  yellow = Color:new({ hexcode = "#6D8257" }),
  blue = Color:new({ hexcode = "#6D5782" }),
  magenta = Color:new({ hexcode = "#82576D" }),
  cyan = Color:new({ hexcode = "#576D82" }),
  white = Color:new({ hexcode = "#A39A90" }),
  bright_black = Color:new({ hexcode = "#5A5047" }),
  bright_red = Color:new({ hexcode = "#826D57" }),
  bright_green = Color:new({ hexcode = "#57826D" }),
  bright_yellow = Color:new({ hexcode = "#6D8257" }),
  bright_blue = Color:new({ hexcode = "#6D5782" }),
  bright_magenta = Color:new({ hexcode = "#82576D" }),
  bright_cyan = Color:new({ hexcode = "#576D82" }),
  bright_white = Color:new({ hexcode = "#DBD6D1" }),
}

---vim:filetype=lua
