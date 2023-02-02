---@module "colo.themes.base16_woodland_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_woodland",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-woodland.json",
  background = "dark",
  black = Color:new({ hex = "#231e18" }),
  red = Color:new({ hex = "#d35c5c" }),
  green = Color:new({ hex = "#b7ba53" }),
  yellow = Color:new({ hex = "#e0ac16" }),
  blue = Color:new({ hex = "#88a4d3" }),
  magenta = Color:new({ hex = "#bb90e2" }),
  cyan = Color:new({ hex = "#6eb958" }),
  white = Color:new({ hex = "#cabcb1" }),
  bright_black = Color:new({ hex = "#9d8b70" }),
  bright_red = Color:new({ hex = "#d35c5c" }),
  bright_green = Color:new({ hex = "#b7ba53" }),
  bright_yellow = Color:new({ hex = "#e0ac16" }),
  bright_blue = Color:new({ hex = "#88a4d3" }),
  bright_magenta = Color:new({ hex = "#bb90e2" }),
  bright_cyan = Color:new({ hex = "#6eb958" }),
  bright_white = Color:new({ hex = "#e4d4c8" }),
}

-- vim:filetype=lua
