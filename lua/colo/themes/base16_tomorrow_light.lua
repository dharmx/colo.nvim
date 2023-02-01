---@module "colo.themes.base16_tomorrow_light"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_tomorrow",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/light/base16-tomorrow.json",
  background = "light",
  black = Color:new({ hexcode = "#ffffff" }),
  red = Color:new({ hexcode = "#c82829" }),
  green = Color:new({ hexcode = "#718c00" }),
  yellow = Color:new({ hexcode = "#eab700" }),
  blue = Color:new({ hexcode = "#4271ae" }),
  magenta = Color:new({ hexcode = "#8959a8" }),
  cyan = Color:new({ hexcode = "#3e999f" }),
  white = Color:new({ hexcode = "#4d4d4c" }),
  bright_black = Color:new({ hexcode = "#8e908c" }),
  bright_red = Color:new({ hexcode = "#c82829" }),
  bright_green = Color:new({ hexcode = "#718c00" }),
  bright_yellow = Color:new({ hexcode = "#eab700" }),
  bright_blue = Color:new({ hexcode = "#4271ae" }),
  bright_magenta = Color:new({ hexcode = "#8959a8" }),
  bright_cyan = Color:new({ hexcode = "#3e999f" }),
  bright_white = Color:new({ hexcode = "#1d1f21" }),
}

---vim:filetype=lua
