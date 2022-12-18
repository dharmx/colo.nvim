---@module "colo.themes.base16_3024_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_3024",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-3024.json",
  background = "dark",
  black = Color:new({ hexcode = "#090300" }),
  red = Color:new({ hexcode = "#db2d20" }),
  green = Color:new({ hexcode = "#01a252" }),
  yellow = Color:new({ hexcode = "#fded02" }),
  blue = Color:new({ hexcode = "#01a0e4" }),
  magenta = Color:new({ hexcode = "#a16a94" }),
  cyan = Color:new({ hexcode = "#b5e4f4" }),
  white = Color:new({ hexcode = "#a5a2a2" }),
  bright_black = Color:new({ hexcode = "#5c5855" }),
  bright_red = Color:new({ hexcode = "#db2d20" }),
  bright_green = Color:new({ hexcode = "#01a252" }),
  bright_yellow = Color:new({ hexcode = "#fded02" }),
  bright_blue = Color:new({ hexcode = "#01a0e4" }),
  bright_magenta = Color:new({ hexcode = "#a16a94" }),
  bright_cyan = Color:new({ hexcode = "#b5e4f4" }),
  bright_white = Color:new({ hexcode = "#f7f7f7" }),
}

---vim:filetype=lua
