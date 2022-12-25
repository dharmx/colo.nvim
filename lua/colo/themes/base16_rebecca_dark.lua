---@module "colo.themes.base16_rebecca_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_rebecca",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-rebecca.json",
  background = "dark",
  black = Color:new({ hexcode = "#292a44" }),
  red = Color:new({ hexcode = "#a0a0c5" }),
  green = Color:new({ hexcode = "#6dfedf" }),
  yellow = Color:new({ hexcode = "#ae81ff" }),
  blue = Color:new({ hexcode = "#2de0a7" }),
  magenta = Color:new({ hexcode = "#7aa5ff" }),
  cyan = Color:new({ hexcode = "#8eaee0" }),
  white = Color:new({ hexcode = "#f1eff8" }),
  bright_black = Color:new({ hexcode = "#666699" }),
  bright_red = Color:new({ hexcode = "#a0a0c5" }),
  bright_green = Color:new({ hexcode = "#6dfedf" }),
  bright_yellow = Color:new({ hexcode = "#ae81ff" }),
  bright_blue = Color:new({ hexcode = "#2de0a7" }),
  bright_magenta = Color:new({ hexcode = "#7aa5ff" }),
  bright_cyan = Color:new({ hexcode = "#8eaee0" }),
  bright_white = Color:new({ hexcode = "#53495d" }),
}

---vim:filetype=lua
