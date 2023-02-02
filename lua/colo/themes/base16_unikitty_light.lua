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
  black = Color:new({ hex = "#ffffff" }),
  red = Color:new({ hex = "#d8137f" }),
  green = Color:new({ hex = "#17ad98" }),
  yellow = Color:new({ hex = "#dc8a0e" }),
  blue = Color:new({ hex = "#775dff" }),
  magenta = Color:new({ hex = "#aa17e6" }),
  cyan = Color:new({ hex = "#149bda" }),
  white = Color:new({ hex = "#6c696e" }),
  bright_black = Color:new({ hex = "#a7a5a8" }),
  bright_red = Color:new({ hex = "#d8137f" }),
  bright_green = Color:new({ hex = "#17ad98" }),
  bright_yellow = Color:new({ hex = "#dc8a0e" }),
  bright_blue = Color:new({ hex = "#775dff" }),
  bright_magenta = Color:new({ hex = "#aa17e6" }),
  bright_cyan = Color:new({ hex = "#149bda" }),
  bright_white = Color:new({ hex = "#322d34" }),
}

-- vim:filetype=lua
