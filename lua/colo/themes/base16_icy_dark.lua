---@module "colo.themes.base16_icy_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_icy",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-icy.json",
  background = "dark",
  black = Color:new({ hex = "#021012" }),
  red = Color:new({ hex = "#16c1d9" }),
  green = Color:new({ hex = "#4dd0e1" }),
  yellow = Color:new({ hex = "#80deea" }),
  blue = Color:new({ hex = "#00bcd4" }),
  magenta = Color:new({ hex = "#00acc1" }),
  cyan = Color:new({ hex = "#26c6da" }),
  white = Color:new({ hex = "#095b67" }),
  bright_black = Color:new({ hex = "#052e34" }),
  bright_red = Color:new({ hex = "#16c1d9" }),
  bright_green = Color:new({ hex = "#4dd0e1" }),
  bright_yellow = Color:new({ hex = "#80deea" }),
  bright_blue = Color:new({ hex = "#00bcd4" }),
  bright_magenta = Color:new({ hex = "#00acc1" }),
  bright_cyan = Color:new({ hex = "#26c6da" }),
  bright_white = Color:new({ hex = "#109cb0" }),
}

-- vim:filetype=lua
