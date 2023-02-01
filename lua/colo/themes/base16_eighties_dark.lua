---@module "colo.themes.base16_eighties_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_eighties",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-eighties.json",
  background = "dark",
  black = Color:new({ hexcode = "#2d2d2d" }),
  red = Color:new({ hexcode = "#f2777a" }),
  green = Color:new({ hexcode = "#99cc99" }),
  yellow = Color:new({ hexcode = "#ffcc66" }),
  blue = Color:new({ hexcode = "#6699cc" }),
  magenta = Color:new({ hexcode = "#cc99cc" }),
  cyan = Color:new({ hexcode = "#66cccc" }),
  white = Color:new({ hexcode = "#d3d0c8" }),
  bright_black = Color:new({ hexcode = "#747369" }),
  bright_red = Color:new({ hexcode = "#f2777a" }),
  bright_green = Color:new({ hexcode = "#99cc99" }),
  bright_yellow = Color:new({ hexcode = "#ffcc66" }),
  bright_blue = Color:new({ hexcode = "#6699cc" }),
  bright_magenta = Color:new({ hexcode = "#cc99cc" }),
  bright_cyan = Color:new({ hexcode = "#66cccc" }),
  bright_white = Color:new({ hexcode = "#f2f0ec" }),
}

---vim:filetype=lua
