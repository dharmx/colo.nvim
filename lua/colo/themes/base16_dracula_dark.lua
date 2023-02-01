---@module "colo.themes.base16_dracula_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_dracula",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-dracula.json",
  background = "dark",
  black = Color:new({ hexcode = "#282936" }),
  red = Color:new({ hexcode = "#ea51b2" }),
  green = Color:new({ hexcode = "#00f769" }),
  yellow = Color:new({ hexcode = "#ebff87" }),
  blue = Color:new({ hexcode = "#62d6e8" }),
  magenta = Color:new({ hexcode = "#b45bcf" }),
  cyan = Color:new({ hexcode = "#a1efe4" }),
  white = Color:new({ hexcode = "#e9e9f4" }),
  bright_black = Color:new({ hexcode = "#4d4f68" }),
  bright_red = Color:new({ hexcode = "#ea51b2" }),
  bright_green = Color:new({ hexcode = "#00f769" }),
  bright_yellow = Color:new({ hexcode = "#ebff87" }),
  bright_blue = Color:new({ hexcode = "#62d6e8" }),
  bright_magenta = Color:new({ hexcode = "#b45bcf" }),
  bright_cyan = Color:new({ hexcode = "#a1efe4" }),
  bright_white = Color:new({ hexcode = "#f7f7fb" }),
}

---vim:filetype=lua
