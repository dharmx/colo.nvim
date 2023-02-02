---@module "colo.themes.base16_isotope_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_isotope",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-isotope.json",
  background = "dark",
  black = Color:new({ hex = "#000000" }),
  red = Color:new({ hex = "#ff0000" }),
  green = Color:new({ hex = "#33ff00" }),
  yellow = Color:new({ hex = "#ff0099" }),
  blue = Color:new({ hex = "#0066ff" }),
  magenta = Color:new({ hex = "#cc00ff" }),
  cyan = Color:new({ hex = "#00ffff" }),
  white = Color:new({ hex = "#d0d0d0" }),
  bright_black = Color:new({ hex = "#808080" }),
  bright_red = Color:new({ hex = "#ff0000" }),
  bright_green = Color:new({ hex = "#33ff00" }),
  bright_yellow = Color:new({ hex = "#ff0099" }),
  bright_blue = Color:new({ hex = "#0066ff" }),
  bright_magenta = Color:new({ hex = "#cc00ff" }),
  bright_cyan = Color:new({ hex = "#00ffff" }),
  bright_white = Color:new({ hex = "#ffffff" }),
}

-- vim:filetype=lua
