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
  black = Color:new({ hex = "#282B35" }),
  red = Color:new({ hex = "#B21889" }),
  green = Color:new({ hex = "#DF0002" }),
  yellow = Color:new({ hex = "#438288" }),
  blue = Color:new({ hex = "#790EAD" }),
  magenta = Color:new({ hex = "#B21889" }),
  cyan = Color:new({ hex = "#00A0BE" }),
  white = Color:new({ hex = "#939599" }),
  bright_black = Color:new({ hex = "#686A71" }),
  bright_red = Color:new({ hex = "#B21889" }),
  bright_green = Color:new({ hex = "#DF0002" }),
  bright_yellow = Color:new({ hex = "#438288" }),
  bright_blue = Color:new({ hex = "#790EAD" }),
  bright_magenta = Color:new({ hex = "#B21889" }),
  bright_cyan = Color:new({ hex = "#00A0BE" }),
  bright_white = Color:new({ hex = "#BEBFC2" }),
}

---vim:filetype=lua
