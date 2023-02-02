---@module "colo.themes.base16_materia_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_materia",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-materia.json",
  background = "dark",
  black = Color:new({ hex = "#263238" }),
  red = Color:new({ hex = "#EC5F67" }),
  green = Color:new({ hex = "#8BD649" }),
  yellow = Color:new({ hex = "#FFCC00" }),
  blue = Color:new({ hex = "#89DDFF" }),
  magenta = Color:new({ hex = "#82AAFF" }),
  cyan = Color:new({ hex = "#80CBC4" }),
  white = Color:new({ hex = "#CDD3DE" }),
  bright_black = Color:new({ hex = "#707880" }),
  bright_red = Color:new({ hex = "#EC5F67" }),
  bright_green = Color:new({ hex = "#8BD649" }),
  bright_yellow = Color:new({ hex = "#FFCC00" }),
  bright_blue = Color:new({ hex = "#89DDFF" }),
  bright_magenta = Color:new({ hex = "#82AAFF" }),
  bright_cyan = Color:new({ hex = "#80CBC4" }),
  bright_white = Color:new({ hex = "#FFFFFF" }),
}

-- vim:filetype=lua
