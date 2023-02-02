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
  black = Color:new({ hex = "#000000" }),
  red = Color:new({ hex = "#eb008a" }),
  green = Color:new({ hex = "#37b349" }),
  yellow = Color:new({ hex = "#f8ca12" }),
  blue = Color:new({ hex = "#0e5a94" }),
  magenta = Color:new({ hex = "#b31e8d" }),
  cyan = Color:new({ hex = "#00aabb" }),
  white = Color:new({ hex = "#d0d0d0" }),
  bright_black = Color:new({ hex = "#505050" }),
  bright_red = Color:new({ hex = "#eb008a" }),
  bright_green = Color:new({ hex = "#37b349" }),
  bright_yellow = Color:new({ hex = "#f8ca12" }),
  bright_blue = Color:new({ hex = "#0e5a94" }),
  bright_magenta = Color:new({ hex = "#b31e8d" }),
  bright_cyan = Color:new({ hex = "#00aabb" }),
  bright_white = Color:new({ hex = "#ffffff" }),
}

-- vim:filetype=lua
