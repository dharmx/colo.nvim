---@module "colo.themes.base16_codeschool_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_codeschool",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-codeschool.json",
  background = "dark",
  black = Color:new({ hexcode = "#232c31" }),
  red = Color:new({ hexcode = "#2a5491" }),
  green = Color:new({ hexcode = "#237986" }),
  yellow = Color:new({ hexcode = "#a03b1e" }),
  blue = Color:new({ hexcode = "#484d79" }),
  magenta = Color:new({ hexcode = "#c59820" }),
  cyan = Color:new({ hexcode = "#b02f30" }),
  white = Color:new({ hexcode = "#9ea7a6" }),
  bright_black = Color:new({ hexcode = "#3f4944" }),
  bright_red = Color:new({ hexcode = "#2a5491" }),
  bright_green = Color:new({ hexcode = "#237986" }),
  bright_yellow = Color:new({ hexcode = "#a03b1e" }),
  bright_blue = Color:new({ hexcode = "#484d79" }),
  bright_magenta = Color:new({ hexcode = "#c59820" }),
  bright_cyan = Color:new({ hexcode = "#b02f30" }),
  bright_white = Color:new({ hexcode = "#b5d8f6" }),
}

---vim:filetype=lua
