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
  black = Color:new({ hexcode = "#000000" }),
  red = Color:new({ hexcode = "#ff6c60" }),
  green = Color:new({ hexcode = "#a8ff60" }),
  yellow = Color:new({ hexcode = "#ffffb6" }),
  blue = Color:new({ hexcode = "#96cbfe" }),
  magenta = Color:new({ hexcode = "#ff73fd" }),
  cyan = Color:new({ hexcode = "#c6c5fe" }),
  white = Color:new({ hexcode = "#b5b3aa" }),
  bright_black = Color:new({ hexcode = "#6c6c66" }),
  bright_red = Color:new({ hexcode = "#ff6c60" }),
  bright_green = Color:new({ hexcode = "#a8ff60" }),
  bright_yellow = Color:new({ hexcode = "#ffffb6" }),
  bright_blue = Color:new({ hexcode = "#96cbfe" }),
  bright_magenta = Color:new({ hexcode = "#ff73fd" }),
  bright_cyan = Color:new({ hexcode = "#c6c5fe" }),
  bright_white = Color:new({ hexcode = "#fdfbee" }),
}

---vim:filetype=lua
