---@module "colo.themes.base16_atelier_savanna_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_atelier_savanna",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-atelier-savanna.json",
  background = "dark",
  black = Color:new({ hexcode = "#171c19" }),
  red = Color:new({ hexcode = "#b16139" }),
  green = Color:new({ hexcode = "#489963" }),
  yellow = Color:new({ hexcode = "#a07e3b" }),
  blue = Color:new({ hexcode = "#478c90" }),
  magenta = Color:new({ hexcode = "#55859b" }),
  cyan = Color:new({ hexcode = "#1c9aa0" }),
  white = Color:new({ hexcode = "#87928a" }),
  bright_black = Color:new({ hexcode = "#5f6d64" }),
  bright_red = Color:new({ hexcode = "#b16139" }),
  bright_green = Color:new({ hexcode = "#489963" }),
  bright_yellow = Color:new({ hexcode = "#a07e3b" }),
  bright_blue = Color:new({ hexcode = "#478c90" }),
  bright_magenta = Color:new({ hexcode = "#55859b" }),
  bright_cyan = Color:new({ hexcode = "#1c9aa0" }),
  bright_white = Color:new({ hexcode = "#ecf4ee" }),
}

---vim:filetype=lua
