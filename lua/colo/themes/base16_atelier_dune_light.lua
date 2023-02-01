---@module "colo.themes.base16_atelier_dune_light"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_atelier_dune",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/light/base16-atelier-dune.json",
  background = "light",
  black = Color:new({ hexcode = "#fefbec" }),
  red = Color:new({ hexcode = "#d73737" }),
  green = Color:new({ hexcode = "#60ac39" }),
  yellow = Color:new({ hexcode = "#ae9513" }),
  blue = Color:new({ hexcode = "#6684e1" }),
  magenta = Color:new({ hexcode = "#b854d4" }),
  cyan = Color:new({ hexcode = "#1fad83" }),
  white = Color:new({ hexcode = "#6e6b5e" }),
  bright_black = Color:new({ hexcode = "#999580" }),
  bright_red = Color:new({ hexcode = "#d73737" }),
  bright_green = Color:new({ hexcode = "#60ac39" }),
  bright_yellow = Color:new({ hexcode = "#ae9513" }),
  bright_blue = Color:new({ hexcode = "#6684e1" }),
  bright_magenta = Color:new({ hexcode = "#b854d4" }),
  bright_cyan = Color:new({ hexcode = "#1fad83" }),
  bright_white = Color:new({ hexcode = "#20201d" }),
}

---vim:filetype=lua
