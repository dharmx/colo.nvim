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
  black = Color:new({ hex = "#061229" }),
  red = Color:new({ hex = "#d07346" }),
  green = Color:new({ hex = "#99bf52" }),
  yellow = Color:new({ hex = "#fbd461" }),
  blue = Color:new({ hex = "#5299bf" }),
  magenta = Color:new({ hex = "#9989cc" }),
  cyan = Color:new({ hex = "#72b9bf" }),
  white = Color:new({ hex = "#b8bbc2" }),
  bright_black = Color:new({ hex = "#717885" }),
  bright_red = Color:new({ hex = "#d07346" }),
  bright_green = Color:new({ hex = "#99bf52" }),
  bright_yellow = Color:new({ hex = "#fbd461" }),
  bright_blue = Color:new({ hex = "#5299bf" }),
  bright_magenta = Color:new({ hex = "#9989cc" }),
  bright_cyan = Color:new({ hex = "#72b9bf" }),
  bright_white = Color:new({ hex = "#ffffff" }),
}

-- vim:filetype=lua
