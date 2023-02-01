---@module "colo.themes.solarized_light"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "solarized",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/light/solarized.json",
  background = "light",
  black = Color:new({ hexcode = "#eee8d5" }),
  red = Color:new({ hexcode = "#dc322f" }),
  green = Color:new({ hexcode = "#859900" }),
  yellow = Color:new({ hexcode = "#b58900" }),
  blue = Color:new({ hexcode = "#268bd2" }),
  magenta = Color:new({ hexcode = "#d33682" }),
  cyan = Color:new({ hexcode = "#2aa198" }),
  white = Color:new({ hexcode = "#073642" }),
  bright_black = Color:new({ hexcode = "#6c7c80" }),
  bright_red = Color:new({ hexcode = "#dc322f" }),
  bright_green = Color:new({ hexcode = "#859900" }),
  bright_yellow = Color:new({ hexcode = "#b58900" }),
  bright_blue = Color:new({ hexcode = "#268bd2" }),
  bright_magenta = Color:new({ hexcode = "#d33682" }),
  bright_cyan = Color:new({ hexcode = "#2aa198" }),
  bright_white = Color:new({ hexcode = "#073642" }),
}

---vim:filetype=lua
