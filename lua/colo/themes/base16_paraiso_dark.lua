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
  black = Color:new({ hex = "#2f1e2e" }),
  red = Color:new({ hex = "#ef6155" }),
  green = Color:new({ hex = "#48b685" }),
  yellow = Color:new({ hex = "#fec418" }),
  blue = Color:new({ hex = "#06b6ef" }),
  magenta = Color:new({ hex = "#815ba4" }),
  cyan = Color:new({ hex = "#5bc4bf" }),
  white = Color:new({ hex = "#a39e9b" }),
  bright_black = Color:new({ hex = "#776e71" }),
  bright_red = Color:new({ hex = "#ef6155" }),
  bright_green = Color:new({ hex = "#48b685" }),
  bright_yellow = Color:new({ hex = "#fec418" }),
  bright_blue = Color:new({ hex = "#06b6ef" }),
  bright_magenta = Color:new({ hex = "#815ba4" }),
  bright_cyan = Color:new({ hex = "#5bc4bf" }),
  bright_white = Color:new({ hex = "#e7e9db" }),
}

---vim:filetype=lua
