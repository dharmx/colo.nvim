---@module "colo.themes.base16_snazzy_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_snazzy",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-snazzy.json",
  background = "dark",
  black = Color:new({ hex = "#33303b" }),
  red = Color:new({ hex = "#ff5c57" }),
  green = Color:new({ hex = "#5af78e" }),
  yellow = Color:new({ hex = "#f3f99d" }),
  blue = Color:new({ hex = "#57c7ff" }),
  magenta = Color:new({ hex = "#ff6ac1" }),
  cyan = Color:new({ hex = "#9aedfe" }),
  white = Color:new({ hex = "#eff0eb" }),
  bright_black = Color:new({ hex = "#4f4b58" }),
  bright_red = Color:new({ hex = "#ff5c57" }),
  bright_green = Color:new({ hex = "#5af78e" }),
  bright_yellow = Color:new({ hex = "#f3f99d" }),
  bright_blue = Color:new({ hex = "#57c7ff" }),
  bright_magenta = Color:new({ hex = "#ff6ac1" }),
  bright_cyan = Color:new({ hex = "#9aedfe" }),
  bright_white = Color:new({ hex = "#eff0eb" }),
}

-- vim:filetype=lua
