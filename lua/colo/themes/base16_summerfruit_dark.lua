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
  black = Color:new({ hex = "#151515" }),
  red = Color:new({ hex = "#FF0086" }),
  green = Color:new({ hex = "#00C918" }),
  yellow = Color:new({ hex = "#ABA800" }),
  blue = Color:new({ hex = "#3777E6" }),
  magenta = Color:new({ hex = "#AD00A1" }),
  cyan = Color:new({ hex = "#1FAAAA" }),
  white = Color:new({ hex = "#D0D0D0" }),
  bright_black = Color:new({ hex = "#505050" }),
  bright_red = Color:new({ hex = "#FF0086" }),
  bright_green = Color:new({ hex = "#00C918" }),
  bright_yellow = Color:new({ hex = "#ABA800" }),
  bright_blue = Color:new({ hex = "#3777E6" }),
  bright_magenta = Color:new({ hex = "#AD00A1" }),
  bright_cyan = Color:new({ hex = "#1FAAAA" }),
  bright_white = Color:new({ hex = "#FFFFFF" }),
}

-- vim:filetype=lua
