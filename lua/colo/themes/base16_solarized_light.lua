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
  black = Color:new({ hex = "#fdf6e3" }),
  red = Color:new({ hex = "#dc322f" }),
  green = Color:new({ hex = "#859900" }),
  yellow = Color:new({ hex = "#b58900" }),
  blue = Color:new({ hex = "#268bd2" }),
  magenta = Color:new({ hex = "#6c71c4" }),
  cyan = Color:new({ hex = "#2aa198" }),
  white = Color:new({ hex = "#586e75" }),
  bright_black = Color:new({ hex = "#839496" }),
  bright_red = Color:new({ hex = "#dc322f" }),
  bright_green = Color:new({ hex = "#859900" }),
  bright_yellow = Color:new({ hex = "#b58900" }),
  bright_blue = Color:new({ hex = "#268bd2" }),
  bright_magenta = Color:new({ hex = "#6c71c4" }),
  bright_cyan = Color:new({ hex = "#2aa198" }),
  bright_white = Color:new({ hex = "#002b36" }),
}

---vim:filetype=lua
