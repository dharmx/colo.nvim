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
  black = Color:new({ hex = "#282936" }),
  red = Color:new({ hex = "#ea51b2" }),
  green = Color:new({ hex = "#00f769" }),
  yellow = Color:new({ hex = "#ebff87" }),
  blue = Color:new({ hex = "#62d6e8" }),
  magenta = Color:new({ hex = "#b45bcf" }),
  cyan = Color:new({ hex = "#a1efe4" }),
  white = Color:new({ hex = "#e9e9f4" }),
  bright_black = Color:new({ hex = "#4d4f68" }),
  bright_red = Color:new({ hex = "#ea51b2" }),
  bright_green = Color:new({ hex = "#00f769" }),
  bright_yellow = Color:new({ hex = "#ebff87" }),
  bright_blue = Color:new({ hex = "#62d6e8" }),
  bright_magenta = Color:new({ hex = "#b45bcf" }),
  bright_cyan = Color:new({ hex = "#a1efe4" }),
  bright_white = Color:new({ hex = "#f7f7fb" }),
}

---vim:filetype=lua
