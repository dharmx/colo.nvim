---@module "colo.themes.base16_classic_light"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_classic",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/light/base16-classic.json",
  background = "light",
  black = Color:new({ hexcode = "#F5F5F5" }),
  red = Color:new({ hexcode = "#AC4142" }),
  green = Color:new({ hexcode = "#90A959" }),
  yellow = Color:new({ hexcode = "#F4BF75" }),
  blue = Color:new({ hexcode = "#6A9FB5" }),
  magenta = Color:new({ hexcode = "#AA759F" }),
  cyan = Color:new({ hexcode = "#75B5AA" }),
  white = Color:new({ hexcode = "#303030" }),
  bright_black = Color:new({ hexcode = "#B0B0B0" }),
  bright_red = Color:new({ hexcode = "#AC4142" }),
  bright_green = Color:new({ hexcode = "#90A959" }),
  bright_yellow = Color:new({ hexcode = "#F4BF75" }),
  bright_blue = Color:new({ hexcode = "#6A9FB5" }),
  bright_magenta = Color:new({ hexcode = "#AA759F" }),
  bright_cyan = Color:new({ hexcode = "#75B5AA" }),
  bright_white = Color:new({ hexcode = "#151515" }),
}

---vim:filetype=lua
