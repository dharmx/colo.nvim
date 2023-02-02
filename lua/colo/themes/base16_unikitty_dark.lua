---@module "colo.themes.base16_unikitty_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_unikitty",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-unikitty.json",
  background = "dark",
  black = Color:new({ hex = "#2e2a31" }),
  red = Color:new({ hex = "#d8137f" }),
  green = Color:new({ hex = "#17ad98" }),
  yellow = Color:new({ hex = "#dc8a0e" }),
  blue = Color:new({ hex = "#796af5" }),
  magenta = Color:new({ hex = "#bb60ea" }),
  cyan = Color:new({ hex = "#149bda" }),
  white = Color:new({ hex = "#bcbabe" }),
  bright_black = Color:new({ hex = "#838085" }),
  bright_red = Color:new({ hex = "#d8137f" }),
  bright_green = Color:new({ hex = "#17ad98" }),
  bright_yellow = Color:new({ hex = "#dc8a0e" }),
  bright_blue = Color:new({ hex = "#796af5" }),
  bright_magenta = Color:new({ hex = "#bb60ea" }),
  bright_cyan = Color:new({ hex = "#149bda" }),
  bright_white = Color:new({ hex = "#f5f4f7" }),
}

-- vim:filetype=lua
