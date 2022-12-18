---@module "colo.themes.base16_xcode_dusk_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_xcode_dusk",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-xcode-dusk.json",
  background = "dark",
  black = Color:new({ hexcode = "#282B35" }),
  red = Color:new({ hexcode = "#B21889" }),
  green = Color:new({ hexcode = "#DF0002" }),
  yellow = Color:new({ hexcode = "#438288" }),
  blue = Color:new({ hexcode = "#790EAD" }),
  magenta = Color:new({ hexcode = "#B21889" }),
  cyan = Color:new({ hexcode = "#00A0BE" }),
  white = Color:new({ hexcode = "#939599" }),
  bright_black = Color:new({ hexcode = "#686A71" }),
  bright_red = Color:new({ hexcode = "#B21889" }),
  bright_green = Color:new({ hexcode = "#DF0002" }),
  bright_yellow = Color:new({ hexcode = "#438288" }),
  bright_blue = Color:new({ hexcode = "#790EAD" }),
  bright_magenta = Color:new({ hexcode = "#B21889" }),
  bright_cyan = Color:new({ hexcode = "#00A0BE" }),
  bright_white = Color:new({ hexcode = "#BEBFC2" }),
}

---vim:filetype=lua
