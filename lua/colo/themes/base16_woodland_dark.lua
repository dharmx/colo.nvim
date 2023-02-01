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
  black = Color:new({ hexcode = "#231e18" }),
  red = Color:new({ hexcode = "#d35c5c" }),
  green = Color:new({ hexcode = "#b7ba53" }),
  yellow = Color:new({ hexcode = "#e0ac16" }),
  blue = Color:new({ hexcode = "#88a4d3" }),
  magenta = Color:new({ hexcode = "#bb90e2" }),
  cyan = Color:new({ hexcode = "#6eb958" }),
  white = Color:new({ hexcode = "#cabcb1" }),
  bright_black = Color:new({ hexcode = "#9d8b70" }),
  bright_red = Color:new({ hexcode = "#d35c5c" }),
  bright_green = Color:new({ hexcode = "#b7ba53" }),
  bright_yellow = Color:new({ hexcode = "#e0ac16" }),
  bright_blue = Color:new({ hexcode = "#88a4d3" }),
  bright_magenta = Color:new({ hexcode = "#bb90e2" }),
  bright_cyan = Color:new({ hexcode = "#6eb958" }),
  bright_white = Color:new({ hexcode = "#e4d4c8" }),
}

---vim:filetype=lua
