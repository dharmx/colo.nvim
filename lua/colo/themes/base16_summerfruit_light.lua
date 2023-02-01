---@module "colo.themes.base16_summerfruit_light"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_summerfruit",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/light/base16-summerfruit.json",
  background = "light",
  black = Color:new({ hexcode = "#FFFFFF" }),
  red = Color:new({ hexcode = "#FF0086" }),
  green = Color:new({ hexcode = "#00C918" }),
  yellow = Color:new({ hexcode = "#ABA800" }),
  blue = Color:new({ hexcode = "#3777E6" }),
  magenta = Color:new({ hexcode = "#AD00A1" }),
  cyan = Color:new({ hexcode = "#1FAAAA" }),
  white = Color:new({ hexcode = "#101010" }),
  bright_black = Color:new({ hexcode = "#B0B0B0" }),
  bright_red = Color:new({ hexcode = "#FF0086" }),
  bright_green = Color:new({ hexcode = "#00C918" }),
  bright_yellow = Color:new({ hexcode = "#ABA800" }),
  bright_blue = Color:new({ hexcode = "#3777E6" }),
  bright_magenta = Color:new({ hexcode = "#AD00A1" }),
  bright_cyan = Color:new({ hexcode = "#1FAAAA" }),
  bright_white = Color:new({ hexcode = "#202020" }),
}

---vim:filetype=lua
