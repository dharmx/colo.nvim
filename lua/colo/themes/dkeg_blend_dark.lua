---@module "colo.themes.dkeg_blend_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "dkeg_blend",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/dkeg-blend.json",
  background = "dark",
  black = Color:new({ hexcode = "#272725" }),
  red = Color:new({ hexcode = "#7d5151" }),
  green = Color:new({ hexcode = "#959c4f" }),
  yellow = Color:new({ hexcode = "#a78749" }),
  blue = Color:new({ hexcode = "#455563" }),
  magenta = Color:new({ hexcode = "#9f908d" }),
  cyan = Color:new({ hexcode = "#4a5e5b" }),
  white = Color:new({ hexcode = "#f2f2f2" }),
  bright_black = Color:new({ hexcode = "#4f4f4b" }),
  bright_red = Color:new({ hexcode = "#7d5151" }),
  bright_green = Color:new({ hexcode = "#959c4f" }),
  bright_yellow = Color:new({ hexcode = "#a78749" }),
  bright_blue = Color:new({ hexcode = "#455563" }),
  bright_magenta = Color:new({ hexcode = "#9f908d" }),
  bright_cyan = Color:new({ hexcode = "#4a5e5b" }),
  bright_white = Color:new({ hexcode = "#ffffff" }),
}

---vim:filetype=lua
