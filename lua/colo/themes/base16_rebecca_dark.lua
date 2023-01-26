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
  black = Color:new({ hex = "#292a44" }),
  red = Color:new({ hex = "#a0a0c5" }),
  green = Color:new({ hex = "#6dfedf" }),
  yellow = Color:new({ hex = "#ae81ff" }),
  blue = Color:new({ hex = "#2de0a7" }),
  magenta = Color:new({ hex = "#7aa5ff" }),
  cyan = Color:new({ hex = "#8eaee0" }),
  white = Color:new({ hex = "#f1eff8" }),
  bright_black = Color:new({ hex = "#666699" }),
  bright_red = Color:new({ hex = "#a0a0c5" }),
  bright_green = Color:new({ hex = "#6dfedf" }),
  bright_yellow = Color:new({ hex = "#ae81ff" }),
  bright_blue = Color:new({ hex = "#2de0a7" }),
  bright_magenta = Color:new({ hex = "#7aa5ff" }),
  bright_cyan = Color:new({ hex = "#8eaee0" }),
  bright_white = Color:new({ hex = "#53495d" }),
}

---vim:filetype=lua
