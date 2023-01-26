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
  black = Color:new({ hex = "#2b303b" }),
  red = Color:new({ hex = "#bf616a" }),
  green = Color:new({ hex = "#a3be8c" }),
  yellow = Color:new({ hex = "#ebcb8b" }),
  blue = Color:new({ hex = "#8fa1b3" }),
  magenta = Color:new({ hex = "#b48ead" }),
  cyan = Color:new({ hex = "#96b5b4" }),
  white = Color:new({ hex = "#c0c5ce" }),
  bright_black = Color:new({ hex = "#65737e" }),
  bright_red = Color:new({ hex = "#bf616a" }),
  bright_green = Color:new({ hex = "#a3be8c" }),
  bright_yellow = Color:new({ hex = "#ebcb8b" }),
  bright_blue = Color:new({ hex = "#8fa1b3" }),
  bright_magenta = Color:new({ hex = "#b48ead" }),
  bright_cyan = Color:new({ hex = "#96b5b4" }),
  bright_white = Color:new({ hex = "#eff1f5" }),
}

---vim:filetype=lua
