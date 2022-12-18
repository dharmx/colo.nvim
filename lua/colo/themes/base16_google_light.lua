---@module "colo.themes.base16_google_light"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_google",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/light/base16-google.json",
  background = "light",
  black = Color:new({ hexcode = "#ffffff" }),
  red = Color:new({ hexcode = "#CC342B" }),
  green = Color:new({ hexcode = "#198844" }),
  yellow = Color:new({ hexcode = "#FBA922" }),
  blue = Color:new({ hexcode = "#3971ED" }),
  magenta = Color:new({ hexcode = "#A36AC7" }),
  cyan = Color:new({ hexcode = "#3971ED" }),
  white = Color:new({ hexcode = "#373b41" }),
  bright_black = Color:new({ hexcode = "#b4b7b4" }),
  bright_red = Color:new({ hexcode = "#CC342B" }),
  bright_green = Color:new({ hexcode = "#198844" }),
  bright_yellow = Color:new({ hexcode = "#FBA922" }),
  bright_blue = Color:new({ hexcode = "#3971ED" }),
  bright_magenta = Color:new({ hexcode = "#A36AC7" }),
  bright_cyan = Color:new({ hexcode = "#3971ED" }),
  bright_white = Color:new({ hexcode = "#1d1f21" }),
}

---vim:filetype=lua
