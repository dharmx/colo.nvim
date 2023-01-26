---@module "colo.themes.base16_circus_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_circus",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-circus.json",
  background = "dark",
  black = Color:new({ hex = "#191919" }),
  red = Color:new({ hex = "#dc657d" }),
  green = Color:new({ hex = "#84b97c" }),
  yellow = Color:new({ hex = "#c3ba63" }),
  blue = Color:new({ hex = "#639ee4" }),
  magenta = Color:new({ hex = "#b888e2" }),
  cyan = Color:new({ hex = "#4bb1a7" }),
  white = Color:new({ hex = "#a7a7a7" }),
  bright_black = Color:new({ hex = "#5f5a60" }),
  bright_red = Color:new({ hex = "#dc657d" }),
  bright_green = Color:new({ hex = "#84b97c" }),
  bright_yellow = Color:new({ hex = "#c3ba63" }),
  bright_blue = Color:new({ hex = "#639ee4" }),
  bright_magenta = Color:new({ hex = "#b888e2" }),
  bright_cyan = Color:new({ hex = "#4bb1a7" }),
  bright_white = Color:new({ hex = "#ffffff" }),
}

---vim:filetype=lua
