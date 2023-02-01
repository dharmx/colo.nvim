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
  black = Color:new({ hexcode = "#33303b" }),
  red = Color:new({ hexcode = "#ff5c57" }),
  green = Color:new({ hexcode = "#5af78e" }),
  yellow = Color:new({ hexcode = "#f3f99d" }),
  blue = Color:new({ hexcode = "#57c7ff" }),
  magenta = Color:new({ hexcode = "#ff6ac1" }),
  cyan = Color:new({ hexcode = "#9aedfe" }),
  white = Color:new({ hexcode = "#eff0eb" }),
  bright_black = Color:new({ hexcode = "#4f4b58" }),
  bright_red = Color:new({ hexcode = "#ff5c57" }),
  bright_green = Color:new({ hexcode = "#5af78e" }),
  bright_yellow = Color:new({ hexcode = "#f3f99d" }),
  bright_blue = Color:new({ hexcode = "#57c7ff" }),
  bright_magenta = Color:new({ hexcode = "#ff6ac1" }),
  bright_cyan = Color:new({ hexcode = "#9aedfe" }),
  bright_white = Color:new({ hexcode = "#eff0eb" }),
}

---vim:filetype=lua
