---@module "colo.themes.base16_unikitty_light"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_unikitty",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/light/base16-unikitty.json",
  background = "light",
  black = Color:new({ hexcode = "#ffffff" }),
  red = Color:new({ hexcode = "#d8137f" }),
  green = Color:new({ hexcode = "#17ad98" }),
  yellow = Color:new({ hexcode = "#dc8a0e" }),
  blue = Color:new({ hexcode = "#775dff" }),
  magenta = Color:new({ hexcode = "#aa17e6" }),
  cyan = Color:new({ hexcode = "#149bda" }),
  white = Color:new({ hexcode = "#6c696e" }),
  bright_black = Color:new({ hexcode = "#a7a5a8" }),
  bright_red = Color:new({ hexcode = "#d8137f" }),
  bright_green = Color:new({ hexcode = "#17ad98" }),
  bright_yellow = Color:new({ hexcode = "#dc8a0e" }),
  bright_blue = Color:new({ hexcode = "#775dff" }),
  bright_magenta = Color:new({ hexcode = "#aa17e6" }),
  bright_cyan = Color:new({ hexcode = "#149bda" }),
  bright_white = Color:new({ hexcode = "#322d34" }),
}

---vim:filetype=lua
