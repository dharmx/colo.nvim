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
  black = Color:new({ hexcode = "#000000" }),
  red = Color:new({ hexcode = "#ff0000" }),
  green = Color:new({ hexcode = "#33ff00" }),
  yellow = Color:new({ hexcode = "#ff0099" }),
  blue = Color:new({ hexcode = "#0066ff" }),
  magenta = Color:new({ hexcode = "#cc00ff" }),
  cyan = Color:new({ hexcode = "#00ffff" }),
  white = Color:new({ hexcode = "#d0d0d0" }),
  bright_black = Color:new({ hexcode = "#808080" }),
  bright_red = Color:new({ hexcode = "#ff0000" }),
  bright_green = Color:new({ hexcode = "#33ff00" }),
  bright_yellow = Color:new({ hexcode = "#ff0099" }),
  bright_blue = Color:new({ hexcode = "#0066ff" }),
  bright_magenta = Color:new({ hexcode = "#cc00ff" }),
  bright_cyan = Color:new({ hexcode = "#00ffff" }),
  bright_white = Color:new({ hexcode = "#ffffff" }),
}

---vim:filetype=lua
