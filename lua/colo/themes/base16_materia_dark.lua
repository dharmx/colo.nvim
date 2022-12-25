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
  black = Color:new({ hexcode = "#263238" }),
  red = Color:new({ hexcode = "#EC5F67" }),
  green = Color:new({ hexcode = "#8BD649" }),
  yellow = Color:new({ hexcode = "#FFCC00" }),
  blue = Color:new({ hexcode = "#89DDFF" }),
  magenta = Color:new({ hexcode = "#82AAFF" }),
  cyan = Color:new({ hexcode = "#80CBC4" }),
  white = Color:new({ hexcode = "#CDD3DE" }),
  bright_black = Color:new({ hexcode = "#707880" }),
  bright_red = Color:new({ hexcode = "#EC5F67" }),
  bright_green = Color:new({ hexcode = "#8BD649" }),
  bright_yellow = Color:new({ hexcode = "#FFCC00" }),
  bright_blue = Color:new({ hexcode = "#89DDFF" }),
  bright_magenta = Color:new({ hexcode = "#82AAFF" }),
  bright_cyan = Color:new({ hexcode = "#80CBC4" }),
  bright_white = Color:new({ hexcode = "#FFFFFF" }),
}

---vim:filetype=lua
