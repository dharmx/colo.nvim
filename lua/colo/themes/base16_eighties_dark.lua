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
  black = Color:new({ hex = "#2d2d2d" }),
  red = Color:new({ hex = "#f2777a" }),
  green = Color:new({ hex = "#99cc99" }),
  yellow = Color:new({ hex = "#ffcc66" }),
  blue = Color:new({ hex = "#6699cc" }),
  magenta = Color:new({ hex = "#cc99cc" }),
  cyan = Color:new({ hex = "#66cccc" }),
  white = Color:new({ hex = "#d3d0c8" }),
  bright_black = Color:new({ hex = "#747369" }),
  bright_red = Color:new({ hex = "#f2777a" }),
  bright_green = Color:new({ hex = "#99cc99" }),
  bright_yellow = Color:new({ hex = "#ffcc66" }),
  bright_blue = Color:new({ hex = "#6699cc" }),
  bright_magenta = Color:new({ hex = "#cc99cc" }),
  bright_cyan = Color:new({ hex = "#66cccc" }),
  bright_white = Color:new({ hex = "#f2f0ec" }),
}

---vim:filetype=lua
