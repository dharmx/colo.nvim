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
  black = Color:new({ hexcode = "#2e2a31" }),
  red = Color:new({ hexcode = "#d8137f" }),
  green = Color:new({ hexcode = "#17ad98" }),
  yellow = Color:new({ hexcode = "#dc8a0e" }),
  blue = Color:new({ hexcode = "#796af5" }),
  magenta = Color:new({ hexcode = "#bb60ea" }),
  cyan = Color:new({ hexcode = "#149bda" }),
  white = Color:new({ hexcode = "#bcbabe" }),
  bright_black = Color:new({ hexcode = "#838085" }),
  bright_red = Color:new({ hexcode = "#d8137f" }),
  bright_green = Color:new({ hexcode = "#17ad98" }),
  bright_yellow = Color:new({ hexcode = "#dc8a0e" }),
  bright_blue = Color:new({ hexcode = "#796af5" }),
  bright_magenta = Color:new({ hexcode = "#bb60ea" }),
  bright_cyan = Color:new({ hexcode = "#149bda" }),
  bright_white = Color:new({ hexcode = "#f5f4f7" }),
}

---vim:filetype=lua
