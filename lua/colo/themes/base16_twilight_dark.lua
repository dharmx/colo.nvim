---@module "colo.themes.base16_twilight_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_twilight",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-twilight.json",
  background = "dark",
  black = Color:new({ hex = "#1e1e1e" }),
  red = Color:new({ hex = "#cf6a4c" }),
  green = Color:new({ hex = "#8f9d6a" }),
  yellow = Color:new({ hex = "#f9ee98" }),
  blue = Color:new({ hex = "#7587a6" }),
  magenta = Color:new({ hex = "#9b859d" }),
  cyan = Color:new({ hex = "#afc4db" }),
  white = Color:new({ hex = "#a7a7a7" }),
  bright_black = Color:new({ hex = "#5f5a60" }),
  bright_red = Color:new({ hex = "#cf6a4c" }),
  bright_green = Color:new({ hex = "#8f9d6a" }),
  bright_yellow = Color:new({ hex = "#f9ee98" }),
  bright_blue = Color:new({ hex = "#7587a6" }),
  bright_magenta = Color:new({ hex = "#9b859d" }),
  bright_cyan = Color:new({ hex = "#afc4db" }),
  bright_white = Color:new({ hex = "#ffffff" }),
}

---vim:filetype=lua
