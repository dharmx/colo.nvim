---@module "colo.themes.base16_paraiso_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_paraiso",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-paraiso.json",
  background = "dark",
  black = Color:new({ hexcode = "#2f1e2e" }),
  red = Color:new({ hexcode = "#ef6155" }),
  green = Color:new({ hexcode = "#48b685" }),
  yellow = Color:new({ hexcode = "#fec418" }),
  blue = Color:new({ hexcode = "#06b6ef" }),
  magenta = Color:new({ hexcode = "#815ba4" }),
  cyan = Color:new({ hexcode = "#5bc4bf" }),
  white = Color:new({ hexcode = "#a39e9b" }),
  bright_black = Color:new({ hexcode = "#776e71" }),
  bright_red = Color:new({ hexcode = "#ef6155" }),
  bright_green = Color:new({ hexcode = "#48b685" }),
  bright_yellow = Color:new({ hexcode = "#fec418" }),
  bright_blue = Color:new({ hexcode = "#06b6ef" }),
  bright_magenta = Color:new({ hexcode = "#815ba4" }),
  bright_cyan = Color:new({ hexcode = "#5bc4bf" }),
  bright_white = Color:new({ hexcode = "#e7e9db" }),
}

---vim:filetype=lua
