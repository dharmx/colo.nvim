---@module "colo.themes.base16_nord_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_nord",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-nord.json",
  background = "dark",
  black = Color:new({ hexcode = "#2E3440" }),
  red = Color:new({ hexcode = "#88C0D0" }),
  green = Color:new({ hexcode = "#BF616A" }),
  yellow = Color:new({ hexcode = "#5E81AC" }),
  blue = Color:new({ hexcode = "#EBCB8B" }),
  magenta = Color:new({ hexcode = "#A3BE8C" }),
  cyan = Color:new({ hexcode = "#D08770" }),
  white = Color:new({ hexcode = "#E5E9F0" }),
  bright_black = Color:new({ hexcode = "#4C566A" }),
  bright_red = Color:new({ hexcode = "#88C0D0" }),
  bright_green = Color:new({ hexcode = "#BF616A" }),
  bright_yellow = Color:new({ hexcode = "#5E81AC" }),
  bright_blue = Color:new({ hexcode = "#EBCB8B" }),
  bright_magenta = Color:new({ hexcode = "#A3BE8C" }),
  bright_cyan = Color:new({ hexcode = "#D08770" }),
  bright_white = Color:new({ hexcode = "#8FBCBB" }),
}

---vim:filetype=lua
