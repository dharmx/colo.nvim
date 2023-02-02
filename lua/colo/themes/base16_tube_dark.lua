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
  black = Color:new({ hex = "#231f20" }),
  red = Color:new({ hex = "#ee2e24" }),
  green = Color:new({ hex = "#00853e" }),
  yellow = Color:new({ hex = "#ffd204" }),
  blue = Color:new({ hex = "#009ddc" }),
  magenta = Color:new({ hex = "#98005d" }),
  cyan = Color:new({ hex = "#85cebc" }),
  white = Color:new({ hex = "#d9d8d8" }),
  bright_black = Color:new({ hex = "#737171" }),
  bright_red = Color:new({ hex = "#ee2e24" }),
  bright_green = Color:new({ hex = "#00853e" }),
  bright_yellow = Color:new({ hex = "#ffd204" }),
  bright_blue = Color:new({ hex = "#009ddc" }),
  bright_magenta = Color:new({ hex = "#98005d" }),
  bright_cyan = Color:new({ hex = "#85cebc" }),
  bright_white = Color:new({ hex = "#ffffff" }),
}

-- vim:filetype=lua
