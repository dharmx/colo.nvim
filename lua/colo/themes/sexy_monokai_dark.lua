---@module "colo.themes.sexy_monokai_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "sexy_monokai",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/sexy-monokai.json",
  background = "dark",
  black = Color:new({ hexcode = "#48483e" }),
  red = Color:new({ hexcode = "#dc2566" }),
  green = Color:new({ hexcode = "#8fc029" }),
  yellow = Color:new({ hexcode = "#d4c96e" }),
  blue = Color:new({ hexcode = "#55bcce" }),
  magenta = Color:new({ hexcode = "#9358fe" }),
  cyan = Color:new({ hexcode = "#56b7a5" }),
  white = Color:new({ hexcode = "#acada1" }),
  bright_black = Color:new({ hexcode = "#76715e" }),
  bright_red = Color:new({ hexcode = "#dc2566" }),
  bright_green = Color:new({ hexcode = "#8fc029" }),
  bright_yellow = Color:new({ hexcode = "#d4c96e" }),
  bright_blue = Color:new({ hexcode = "#55bcce" }),
  bright_magenta = Color:new({ hexcode = "#9358fe" }),
  bright_cyan = Color:new({ hexcode = "#56b7a5" }),
  bright_white = Color:new({ hexcode = "#acada1" }),
}

---vim:filetype=lua
