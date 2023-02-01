---@module "colo.themes.base16_phd_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_phd",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-phd.json",
  background = "dark",
  black = Color:new({ hexcode = "#061229" }),
  red = Color:new({ hexcode = "#d07346" }),
  green = Color:new({ hexcode = "#99bf52" }),
  yellow = Color:new({ hexcode = "#fbd461" }),
  blue = Color:new({ hexcode = "#5299bf" }),
  magenta = Color:new({ hexcode = "#9989cc" }),
  cyan = Color:new({ hexcode = "#72b9bf" }),
  white = Color:new({ hexcode = "#b8bbc2" }),
  bright_black = Color:new({ hexcode = "#717885" }),
  bright_red = Color:new({ hexcode = "#d07346" }),
  bright_green = Color:new({ hexcode = "#99bf52" }),
  bright_yellow = Color:new({ hexcode = "#fbd461" }),
  bright_blue = Color:new({ hexcode = "#5299bf" }),
  bright_magenta = Color:new({ hexcode = "#9989cc" }),
  bright_cyan = Color:new({ hexcode = "#72b9bf" }),
  bright_white = Color:new({ hexcode = "#ffffff" }),
}

---vim:filetype=lua
