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
  black = Color:new({ hexcode = "#151718" }),
  red = Color:new({ hexcode = "#Cd3f45" }),
  green = Color:new({ hexcode = "#9fca56" }),
  yellow = Color:new({ hexcode = "#e6cd69" }),
  blue = Color:new({ hexcode = "#55b5db" }),
  magenta = Color:new({ hexcode = "#a074c4" }),
  cyan = Color:new({ hexcode = "#55dbbe" }),
  white = Color:new({ hexcode = "#d6d6d6" }),
  bright_black = Color:new({ hexcode = "#41535B" }),
  bright_red = Color:new({ hexcode = "#Cd3f45" }),
  bright_green = Color:new({ hexcode = "#9fca56" }),
  bright_yellow = Color:new({ hexcode = "#e6cd69" }),
  bright_blue = Color:new({ hexcode = "#55b5db" }),
  bright_magenta = Color:new({ hexcode = "#a074c4" }),
  bright_cyan = Color:new({ hexcode = "#55dbbe" }),
  bright_white = Color:new({ hexcode = "#ffffff" }),
}

---vim:filetype=lua
