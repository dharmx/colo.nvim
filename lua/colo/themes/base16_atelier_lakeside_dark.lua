---@module "colo.themes.base16_atelier_lakeside_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_atelier_lakeside",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-atelier-lakeside.json",
  background = "dark",
  black = Color:new({ hex = "#161b1d" }),
  red = Color:new({ hex = "#d22d72" }),
  green = Color:new({ hex = "#568c3b" }),
  yellow = Color:new({ hex = "#8a8a0f" }),
  blue = Color:new({ hex = "#257fad" }),
  magenta = Color:new({ hex = "#6b6bb8" }),
  cyan = Color:new({ hex = "#2d8f6f" }),
  white = Color:new({ hex = "#7ea2b4" }),
  bright_black = Color:new({ hex = "#5a7b8c" }),
  bright_red = Color:new({ hex = "#d22d72" }),
  bright_green = Color:new({ hex = "#568c3b" }),
  bright_yellow = Color:new({ hex = "#8a8a0f" }),
  bright_blue = Color:new({ hex = "#257fad" }),
  bright_magenta = Color:new({ hex = "#6b6bb8" }),
  bright_cyan = Color:new({ hex = "#2d8f6f" }),
  bright_white = Color:new({ hex = "#ebf8ff" }),
}

---vim:filetype=lua
