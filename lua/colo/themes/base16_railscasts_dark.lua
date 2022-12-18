---@module "colo.themes.base16_railscasts_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_railscasts",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-railscasts.json",
  background = "dark",
  black = Color:new({ hexcode = "#2b2b2b" }),
  red = Color:new({ hexcode = "#da4939" }),
  green = Color:new({ hexcode = "#a5c261" }),
  yellow = Color:new({ hexcode = "#ffc66d" }),
  blue = Color:new({ hexcode = "#6d9cbe" }),
  magenta = Color:new({ hexcode = "#b6b3eb" }),
  cyan = Color:new({ hexcode = "#519f50" }),
  white = Color:new({ hexcode = "#e6e1dc" }),
  bright_black = Color:new({ hexcode = "#5a647e" }),
  bright_red = Color:new({ hexcode = "#da4939" }),
  bright_green = Color:new({ hexcode = "#a5c261" }),
  bright_yellow = Color:new({ hexcode = "#ffc66d" }),
  bright_blue = Color:new({ hexcode = "#6d9cbe" }),
  bright_magenta = Color:new({ hexcode = "#b6b3eb" }),
  bright_cyan = Color:new({ hexcode = "#519f50" }),
  bright_white = Color:new({ hexcode = "#f9f7f3" }),
}

---vim:filetype=lua
