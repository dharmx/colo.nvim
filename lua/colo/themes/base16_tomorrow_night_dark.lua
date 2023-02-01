---@module "colo.themes.base16_tomorrow_night_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_tomorrow_night",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-tomorrow-night.json",
  background = "dark",
  black = Color:new({ hexcode = "#1d1f21" }),
  red = Color:new({ hexcode = "#cc6666" }),
  green = Color:new({ hexcode = "#b5bd68" }),
  yellow = Color:new({ hexcode = "#f0c674" }),
  blue = Color:new({ hexcode = "#81a2be" }),
  magenta = Color:new({ hexcode = "#b294bb" }),
  cyan = Color:new({ hexcode = "#8abeb7" }),
  white = Color:new({ hexcode = "#c5c8c6" }),
  bright_black = Color:new({ hexcode = "#969896" }),
  bright_red = Color:new({ hexcode = "#cc6666" }),
  bright_green = Color:new({ hexcode = "#b5bd68" }),
  bright_yellow = Color:new({ hexcode = "#f0c674" }),
  bright_blue = Color:new({ hexcode = "#81a2be" }),
  bright_magenta = Color:new({ hexcode = "#b294bb" }),
  bright_cyan = Color:new({ hexcode = "#8abeb7" }),
  bright_white = Color:new({ hexcode = "#ffffff" }),
}

---vim:filetype=lua
