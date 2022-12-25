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
  black = Color:new({ hexcode = "#18262F" }),
  red = Color:new({ hexcode = "#EF5253" }),
  green = Color:new({ hexcode = "#7CC844" }),
  yellow = Color:new({ hexcode = "#E4B51C" }),
  blue = Color:new({ hexcode = "#33B5E1" }),
  magenta = Color:new({ hexcode = "#A363D5" }),
  cyan = Color:new({ hexcode = "#52CBB0" }),
  white = Color:new({ hexcode = "#A6AFB8" }),
  bright_black = Color:new({ hexcode = "#667581" }),
  bright_red = Color:new({ hexcode = "#EF5253" }),
  bright_green = Color:new({ hexcode = "#7CC844" }),
  bright_yellow = Color:new({ hexcode = "#E4B51C" }),
  bright_blue = Color:new({ hexcode = "#33B5E1" }),
  bright_magenta = Color:new({ hexcode = "#A363D5" }),
  bright_cyan = Color:new({ hexcode = "#52CBB0" }),
  bright_white = Color:new({ hexcode = "#F5F7FA" }),
}

---vim:filetype=lua
