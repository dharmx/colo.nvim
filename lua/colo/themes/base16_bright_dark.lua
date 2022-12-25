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
  black = Color:new({ hexcode = "#000000" }),
  red = Color:new({ hexcode = "#fb0120" }),
  green = Color:new({ hexcode = "#a1c659" }),
  yellow = Color:new({ hexcode = "#fda331" }),
  blue = Color:new({ hexcode = "#6fb3d2" }),
  magenta = Color:new({ hexcode = "#d381c3" }),
  cyan = Color:new({ hexcode = "#76c7b7" }),
  white = Color:new({ hexcode = "#e0e0e0" }),
  bright_black = Color:new({ hexcode = "#b0b0b0" }),
  bright_red = Color:new({ hexcode = "#fb0120" }),
  bright_green = Color:new({ hexcode = "#a1c659" }),
  bright_yellow = Color:new({ hexcode = "#fda331" }),
  bright_blue = Color:new({ hexcode = "#6fb3d2" }),
  bright_magenta = Color:new({ hexcode = "#d381c3" }),
  bright_cyan = Color:new({ hexcode = "#76c7b7" }),
  bright_white = Color:new({ hexcode = "#ffffff" }),
}

---vim:filetype=lua
