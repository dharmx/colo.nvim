---@module "colo.themes.base16_solarflare_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_solarflare",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-solarflare.json",
  background = "dark",
  black = Color:new({ hex = "#18262F" }),
  red = Color:new({ hex = "#EF5253" }),
  green = Color:new({ hex = "#7CC844" }),
  yellow = Color:new({ hex = "#E4B51C" }),
  blue = Color:new({ hex = "#33B5E1" }),
  magenta = Color:new({ hex = "#A363D5" }),
  cyan = Color:new({ hex = "#52CBB0" }),
  white = Color:new({ hex = "#A6AFB8" }),
  bright_black = Color:new({ hex = "#667581" }),
  bright_red = Color:new({ hex = "#EF5253" }),
  bright_green = Color:new({ hex = "#7CC844" }),
  bright_yellow = Color:new({ hex = "#E4B51C" }),
  bright_blue = Color:new({ hex = "#33B5E1" }),
  bright_magenta = Color:new({ hex = "#A363D5" }),
  bright_cyan = Color:new({ hex = "#52CBB0" }),
  bright_white = Color:new({ hex = "#F5F7FA" }),
}

-- vim:filetype=lua
