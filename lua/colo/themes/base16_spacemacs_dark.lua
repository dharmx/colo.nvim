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
  black = Color:new({ hex = "#1f2022" }),
  red = Color:new({ hex = "#f2241f" }),
  green = Color:new({ hex = "#67b11d" }),
  yellow = Color:new({ hex = "#b1951d" }),
  blue = Color:new({ hex = "#4f97d7" }),
  magenta = Color:new({ hex = "#a31db1" }),
  cyan = Color:new({ hex = "#2d9574" }),
  white = Color:new({ hex = "#a3a3a3" }),
  bright_black = Color:new({ hex = "#585858" }),
  bright_red = Color:new({ hex = "#f2241f" }),
  bright_green = Color:new({ hex = "#67b11d" }),
  bright_yellow = Color:new({ hex = "#b1951d" }),
  bright_blue = Color:new({ hex = "#4f97d7" }),
  bright_magenta = Color:new({ hex = "#a31db1" }),
  bright_cyan = Color:new({ hex = "#2d9574" }),
  bright_white = Color:new({ hex = "#f8f8f8" }),
}

---vim:filetype=lua
