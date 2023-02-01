---@module "colo.themes.base16_apathy_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_apathy",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-apathy.json",
  background = "dark",
  black = Color:new({ hexcode = "#031A16" }),
  red = Color:new({ hexcode = "#3E9688" }),
  green = Color:new({ hexcode = "#883E96" }),
  yellow = Color:new({ hexcode = "#3E4C96" }),
  blue = Color:new({ hexcode = "#96883E" }),
  magenta = Color:new({ hexcode = "#4C963E" }),
  cyan = Color:new({ hexcode = "#963E4C" }),
  white = Color:new({ hexcode = "#81B5AC" }),
  bright_black = Color:new({ hexcode = "#2B685E" }),
  bright_red = Color:new({ hexcode = "#3E9688" }),
  bright_green = Color:new({ hexcode = "#883E96" }),
  bright_yellow = Color:new({ hexcode = "#3E4C96" }),
  bright_blue = Color:new({ hexcode = "#96883E" }),
  bright_magenta = Color:new({ hexcode = "#4C963E" }),
  bright_cyan = Color:new({ hexcode = "#963E4C" }),
  bright_white = Color:new({ hexcode = "#D2E7E4" }),
}

---vim:filetype=lua
