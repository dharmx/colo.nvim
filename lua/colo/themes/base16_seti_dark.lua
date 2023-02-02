---@module "colo.themes.base16_seti_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_seti",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-seti.json",
  background = "dark",
  black = Color:new({ hex = "#151718" }),
  red = Color:new({ hex = "#Cd3f45" }),
  green = Color:new({ hex = "#9fca56" }),
  yellow = Color:new({ hex = "#e6cd69" }),
  blue = Color:new({ hex = "#55b5db" }),
  magenta = Color:new({ hex = "#a074c4" }),
  cyan = Color:new({ hex = "#55dbbe" }),
  white = Color:new({ hex = "#d6d6d6" }),
  bright_black = Color:new({ hex = "#41535B" }),
  bright_red = Color:new({ hex = "#Cd3f45" }),
  bright_green = Color:new({ hex = "#9fca56" }),
  bright_yellow = Color:new({ hex = "#e6cd69" }),
  bright_blue = Color:new({ hex = "#55b5db" }),
  bright_magenta = Color:new({ hex = "#a074c4" }),
  bright_cyan = Color:new({ hex = "#55dbbe" }),
  bright_white = Color:new({ hex = "#ffffff" }),
}

-- vim:filetype=lua
