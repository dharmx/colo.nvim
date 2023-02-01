---@module "colo.themes.base16_spacemacs_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_spacemacs",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-spacemacs.json",
  background = "dark",
  black = Color:new({ hexcode = "#1f2022" }),
  red = Color:new({ hexcode = "#f2241f" }),
  green = Color:new({ hexcode = "#67b11d" }),
  yellow = Color:new({ hexcode = "#b1951d" }),
  blue = Color:new({ hexcode = "#4f97d7" }),
  magenta = Color:new({ hexcode = "#a31db1" }),
  cyan = Color:new({ hexcode = "#2d9574" }),
  white = Color:new({ hexcode = "#a3a3a3" }),
  bright_black = Color:new({ hexcode = "#585858" }),
  bright_red = Color:new({ hexcode = "#f2241f" }),
  bright_green = Color:new({ hexcode = "#67b11d" }),
  bright_yellow = Color:new({ hexcode = "#b1951d" }),
  bright_blue = Color:new({ hexcode = "#4f97d7" }),
  bright_magenta = Color:new({ hexcode = "#a31db1" }),
  bright_cyan = Color:new({ hexcode = "#2d9574" }),
  bright_white = Color:new({ hexcode = "#f8f8f8" }),
}

---vim:filetype=lua
