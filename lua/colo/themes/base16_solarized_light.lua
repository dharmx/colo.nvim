---@module "colo.themes.base16_solarized_light"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_solarized",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/light/base16-solarized.json",
  background = "light",
  black = Color:new({ hexcode = "#fdf6e3" }),
  red = Color:new({ hexcode = "#dc322f" }),
  green = Color:new({ hexcode = "#859900" }),
  yellow = Color:new({ hexcode = "#b58900" }),
  blue = Color:new({ hexcode = "#268bd2" }),
  magenta = Color:new({ hexcode = "#6c71c4" }),
  cyan = Color:new({ hexcode = "#2aa198" }),
  white = Color:new({ hexcode = "#586e75" }),
  bright_black = Color:new({ hexcode = "#839496" }),
  bright_red = Color:new({ hexcode = "#dc322f" }),
  bright_green = Color:new({ hexcode = "#859900" }),
  bright_yellow = Color:new({ hexcode = "#b58900" }),
  bright_blue = Color:new({ hexcode = "#268bd2" }),
  bright_magenta = Color:new({ hexcode = "#6c71c4" }),
  bright_cyan = Color:new({ hexcode = "#2aa198" }),
  bright_white = Color:new({ hexcode = "#002b36" }),
}

---vim:filetype=lua
