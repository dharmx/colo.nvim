---@module "colo.themes.base16_grayscale_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_grayscale",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-grayscale.json",
  background = "dark",
  black = Color:new({ hexcode = "#101010" }),
  red = Color:new({ hexcode = "#7c7c7c" }),
  green = Color:new({ hexcode = "#8e8e8e" }),
  yellow = Color:new({ hexcode = "#a0a0a0" }),
  blue = Color:new({ hexcode = "#686868" }),
  magenta = Color:new({ hexcode = "#747474" }),
  cyan = Color:new({ hexcode = "#868686" }),
  white = Color:new({ hexcode = "#b9b9b9" }),
  bright_black = Color:new({ hexcode = "#525252" }),
  bright_red = Color:new({ hexcode = "#7c7c7c" }),
  bright_green = Color:new({ hexcode = "#8e8e8e" }),
  bright_yellow = Color:new({ hexcode = "#a0a0a0" }),
  bright_blue = Color:new({ hexcode = "#686868" }),
  bright_magenta = Color:new({ hexcode = "#747474" }),
  bright_cyan = Color:new({ hexcode = "#868686" }),
  bright_white = Color:new({ hexcode = "#f7f7f7" }),
}

---vim:filetype=lua
