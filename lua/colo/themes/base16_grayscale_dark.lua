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
  black = Color:new({ hex = "#101010" }),
  red = Color:new({ hex = "#7c7c7c" }),
  green = Color:new({ hex = "#8e8e8e" }),
  yellow = Color:new({ hex = "#a0a0a0" }),
  blue = Color:new({ hex = "#686868" }),
  magenta = Color:new({ hex = "#747474" }),
  cyan = Color:new({ hex = "#868686" }),
  white = Color:new({ hex = "#b9b9b9" }),
  bright_black = Color:new({ hex = "#525252" }),
  bright_red = Color:new({ hex = "#7c7c7c" }),
  bright_green = Color:new({ hex = "#8e8e8e" }),
  bright_yellow = Color:new({ hex = "#a0a0a0" }),
  bright_blue = Color:new({ hex = "#686868" }),
  bright_magenta = Color:new({ hex = "#747474" }),
  bright_cyan = Color:new({ hex = "#868686" }),
  bright_white = Color:new({ hex = "#f7f7f7" }),
}

---vim:filetype=lua
