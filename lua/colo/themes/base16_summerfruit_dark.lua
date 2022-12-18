---@module "colo.themes.base16_summerfruit_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_summerfruit",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-summerfruit.json",
  background = "dark",
  black = Color:new({ hexcode = "#151515" }),
  red = Color:new({ hexcode = "#FF0086" }),
  green = Color:new({ hexcode = "#00C918" }),
  yellow = Color:new({ hexcode = "#ABA800" }),
  blue = Color:new({ hexcode = "#3777E6" }),
  magenta = Color:new({ hexcode = "#AD00A1" }),
  cyan = Color:new({ hexcode = "#1FAAAA" }),
  white = Color:new({ hexcode = "#D0D0D0" }),
  bright_black = Color:new({ hexcode = "#505050" }),
  bright_red = Color:new({ hexcode = "#FF0086" }),
  bright_green = Color:new({ hexcode = "#00C918" }),
  bright_yellow = Color:new({ hexcode = "#ABA800" }),
  bright_blue = Color:new({ hexcode = "#3777E6" }),
  bright_magenta = Color:new({ hexcode = "#AD00A1" }),
  bright_cyan = Color:new({ hexcode = "#1FAAAA" }),
  bright_white = Color:new({ hexcode = "#FFFFFF" }),
}

---vim:filetype=lua
