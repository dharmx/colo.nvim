---@module "colo.themes.base16_irblack_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_irblack",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-irblack.json",
  background = "dark",
  black = Color:new({ hex = "#000000" }),
  red = Color:new({ hex = "#ff6c60" }),
  green = Color:new({ hex = "#a8ff60" }),
  yellow = Color:new({ hex = "#ffffb6" }),
  blue = Color:new({ hex = "#96cbfe" }),
  magenta = Color:new({ hex = "#ff73fd" }),
  cyan = Color:new({ hex = "#c6c5fe" }),
  white = Color:new({ hex = "#b5b3aa" }),
  bright_black = Color:new({ hex = "#6c6c66" }),
  bright_red = Color:new({ hex = "#ff6c60" }),
  bright_green = Color:new({ hex = "#a8ff60" }),
  bright_yellow = Color:new({ hex = "#ffffb6" }),
  bright_blue = Color:new({ hex = "#96cbfe" }),
  bright_magenta = Color:new({ hex = "#ff73fd" }),
  bright_cyan = Color:new({ hex = "#c6c5fe" }),
  bright_white = Color:new({ hex = "#fdfbee" }),
}

-- vim:filetype=lua
