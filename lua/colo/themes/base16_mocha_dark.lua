---@module "colo.themes.base16_mocha_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_mocha",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-mocha.json",
  background = "dark",
  black = Color:new({ hex = "#3B3228" }),
  red = Color:new({ hex = "#cb6077" }),
  green = Color:new({ hex = "#beb55b" }),
  yellow = Color:new({ hex = "#f4bc87" }),
  blue = Color:new({ hex = "#8ab3b5" }),
  magenta = Color:new({ hex = "#a89bb9" }),
  cyan = Color:new({ hex = "#7bbda4" }),
  white = Color:new({ hex = "#d0c8c6" }),
  bright_black = Color:new({ hex = "#7e705a" }),
  bright_red = Color:new({ hex = "#cb6077" }),
  bright_green = Color:new({ hex = "#beb55b" }),
  bright_yellow = Color:new({ hex = "#f4bc87" }),
  bright_blue = Color:new({ hex = "#8ab3b5" }),
  bright_magenta = Color:new({ hex = "#a89bb9" }),
  bright_cyan = Color:new({ hex = "#7bbda4" }),
  bright_white = Color:new({ hex = "#f5eeeb" }),
}

---vim:filetype=lua
