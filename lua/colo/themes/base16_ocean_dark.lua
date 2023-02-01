---@module "colo.themes.base16_ocean_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_ocean",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-ocean.json",
  background = "dark",
  black = Color:new({ hexcode = "#2b303b" }),
  red = Color:new({ hexcode = "#bf616a" }),
  green = Color:new({ hexcode = "#a3be8c" }),
  yellow = Color:new({ hexcode = "#ebcb8b" }),
  blue = Color:new({ hexcode = "#8fa1b3" }),
  magenta = Color:new({ hexcode = "#b48ead" }),
  cyan = Color:new({ hexcode = "#96b5b4" }),
  white = Color:new({ hexcode = "#c0c5ce" }),
  bright_black = Color:new({ hexcode = "#65737e" }),
  bright_red = Color:new({ hexcode = "#bf616a" }),
  bright_green = Color:new({ hexcode = "#a3be8c" }),
  bright_yellow = Color:new({ hexcode = "#ebcb8b" }),
  bright_blue = Color:new({ hexcode = "#8fa1b3" }),
  bright_magenta = Color:new({ hexcode = "#b48ead" }),
  bright_cyan = Color:new({ hexcode = "#96b5b4" }),
  bright_white = Color:new({ hexcode = "#eff1f5" }),
}

---vim:filetype=lua
