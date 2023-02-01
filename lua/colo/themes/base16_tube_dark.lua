---@module "colo.themes.base16_tube_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_tube",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-tube.json",
  background = "dark",
  black = Color:new({ hexcode = "#231f20" }),
  red = Color:new({ hexcode = "#ee2e24" }),
  green = Color:new({ hexcode = "#00853e" }),
  yellow = Color:new({ hexcode = "#ffd204" }),
  blue = Color:new({ hexcode = "#009ddc" }),
  magenta = Color:new({ hexcode = "#98005d" }),
  cyan = Color:new({ hexcode = "#85cebc" }),
  white = Color:new({ hexcode = "#d9d8d8" }),
  bright_black = Color:new({ hexcode = "#737171" }),
  bright_red = Color:new({ hexcode = "#ee2e24" }),
  bright_green = Color:new({ hexcode = "#00853e" }),
  bright_yellow = Color:new({ hexcode = "#ffd204" }),
  bright_blue = Color:new({ hexcode = "#009ddc" }),
  bright_magenta = Color:new({ hexcode = "#98005d" }),
  bright_cyan = Color:new({ hexcode = "#85cebc" }),
  bright_white = Color:new({ hexcode = "#ffffff" }),
}

---vim:filetype=lua
