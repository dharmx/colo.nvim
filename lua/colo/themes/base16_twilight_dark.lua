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
  black = Color:new({ hexcode = "#1e1e1e" }),
  red = Color:new({ hexcode = "#cf6a4c" }),
  green = Color:new({ hexcode = "#8f9d6a" }),
  yellow = Color:new({ hexcode = "#f9ee98" }),
  blue = Color:new({ hexcode = "#7587a6" }),
  magenta = Color:new({ hexcode = "#9b859d" }),
  cyan = Color:new({ hexcode = "#afc4db" }),
  white = Color:new({ hexcode = "#a7a7a7" }),
  bright_black = Color:new({ hexcode = "#5f5a60" }),
  bright_red = Color:new({ hexcode = "#cf6a4c" }),
  bright_green = Color:new({ hexcode = "#8f9d6a" }),
  bright_yellow = Color:new({ hexcode = "#f9ee98" }),
  bright_blue = Color:new({ hexcode = "#7587a6" }),
  bright_magenta = Color:new({ hexcode = "#9b859d" }),
  bright_cyan = Color:new({ hexcode = "#afc4db" }),
  bright_white = Color:new({ hexcode = "#ffffff" }),
}

---vim:filetype=lua
