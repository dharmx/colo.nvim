---@module "colo.themes.base16_bright_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_bright",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-bright.json",
  background = "dark",
  black = Color:new({ hex = "#000000" }),
  red = Color:new({ hex = "#fb0120" }),
  green = Color:new({ hex = "#a1c659" }),
  yellow = Color:new({ hex = "#fda331" }),
  blue = Color:new({ hex = "#6fb3d2" }),
  magenta = Color:new({ hex = "#d381c3" }),
  cyan = Color:new({ hex = "#76c7b7" }),
  white = Color:new({ hex = "#e0e0e0" }),
  bright_black = Color:new({ hex = "#b0b0b0" }),
  bright_red = Color:new({ hex = "#fb0120" }),
  bright_green = Color:new({ hex = "#a1c659" }),
  bright_yellow = Color:new({ hex = "#fda331" }),
  bright_blue = Color:new({ hex = "#6fb3d2" }),
  bright_magenta = Color:new({ hex = "#d381c3" }),
  bright_cyan = Color:new({ hex = "#76c7b7" }),
  bright_white = Color:new({ hex = "#ffffff" }),
}

-- vim:filetype=lua
