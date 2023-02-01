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
  black = Color:new({ hexcode = "#191919" }),
  red = Color:new({ hexcode = "#dc657d" }),
  green = Color:new({ hexcode = "#84b97c" }),
  yellow = Color:new({ hexcode = "#c3ba63" }),
  blue = Color:new({ hexcode = "#639ee4" }),
  magenta = Color:new({ hexcode = "#b888e2" }),
  cyan = Color:new({ hexcode = "#4bb1a7" }),
  white = Color:new({ hexcode = "#a7a7a7" }),
  bright_black = Color:new({ hexcode = "#5f5a60" }),
  bright_red = Color:new({ hexcode = "#dc657d" }),
  bright_green = Color:new({ hexcode = "#84b97c" }),
  bright_yellow = Color:new({ hexcode = "#c3ba63" }),
  bright_blue = Color:new({ hexcode = "#639ee4" }),
  bright_magenta = Color:new({ hexcode = "#b888e2" }),
  bright_cyan = Color:new({ hexcode = "#4bb1a7" }),
  bright_white = Color:new({ hexcode = "#ffffff" }),
}

---vim:filetype=lua
