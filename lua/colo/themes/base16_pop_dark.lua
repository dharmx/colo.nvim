---@module "colo.themes.base16_pop_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_pop",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-pop.json",
  background = "dark",
  black = Color:new({ hexcode = "#000000" }),
  red = Color:new({ hexcode = "#eb008a" }),
  green = Color:new({ hexcode = "#37b349" }),
  yellow = Color:new({ hexcode = "#f8ca12" }),
  blue = Color:new({ hexcode = "#0e5a94" }),
  magenta = Color:new({ hexcode = "#b31e8d" }),
  cyan = Color:new({ hexcode = "#00aabb" }),
  white = Color:new({ hexcode = "#d0d0d0" }),
  bright_black = Color:new({ hexcode = "#505050" }),
  bright_red = Color:new({ hexcode = "#eb008a" }),
  bright_green = Color:new({ hexcode = "#37b349" }),
  bright_yellow = Color:new({ hexcode = "#f8ca12" }),
  bright_blue = Color:new({ hexcode = "#0e5a94" }),
  bright_magenta = Color:new({ hexcode = "#b31e8d" }),
  bright_cyan = Color:new({ hexcode = "#00aabb" }),
  bright_white = Color:new({ hexcode = "#ffffff" }),
}

---vim:filetype=lua
