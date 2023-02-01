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
  black = Color:new({ hex = "#ffffff" }),
  red = Color:new({ hex = "#c82829" }),
  green = Color:new({ hex = "#718c00" }),
  yellow = Color:new({ hex = "#eab700" }),
  blue = Color:new({ hex = "#4271ae" }),
  magenta = Color:new({ hex = "#8959a8" }),
  cyan = Color:new({ hex = "#3e999f" }),
  white = Color:new({ hex = "#4d4d4c" }),
  bright_black = Color:new({ hex = "#8e908c" }),
  bright_red = Color:new({ hex = "#c82829" }),
  bright_green = Color:new({ hex = "#718c00" }),
  bright_yellow = Color:new({ hex = "#eab700" }),
  bright_blue = Color:new({ hex = "#4271ae" }),
  bright_magenta = Color:new({ hex = "#8959a8" }),
  bright_cyan = Color:new({ hex = "#3e999f" }),
  bright_white = Color:new({ hex = "#1d1f21" }),
}

---vim:filetype=lua
