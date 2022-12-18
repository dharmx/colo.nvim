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
  black = Color:new({ hexcode = "#021012" }),
  red = Color:new({ hexcode = "#16c1d9" }),
  green = Color:new({ hexcode = "#4dd0e1" }),
  yellow = Color:new({ hexcode = "#80deea" }),
  blue = Color:new({ hexcode = "#00bcd4" }),
  magenta = Color:new({ hexcode = "#00acc1" }),
  cyan = Color:new({ hexcode = "#26c6da" }),
  white = Color:new({ hexcode = "#095b67" }),
  bright_black = Color:new({ hexcode = "#052e34" }),
  bright_red = Color:new({ hexcode = "#16c1d9" }),
  bright_green = Color:new({ hexcode = "#4dd0e1" }),
  bright_yellow = Color:new({ hexcode = "#80deea" }),
  bright_blue = Color:new({ hexcode = "#00bcd4" }),
  bright_magenta = Color:new({ hexcode = "#00acc1" }),
  bright_cyan = Color:new({ hexcode = "#26c6da" }),
  bright_white = Color:new({ hexcode = "#109cb0" }),
}

---vim:filetype=lua
