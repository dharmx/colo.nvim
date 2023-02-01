---@module "colo.themes.base16_classic_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_classic",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-classic.json",
  background = "dark",
  black = Color:new({ hex = "#151515" }),
  red = Color:new({ hex = "#AC4142" }),
  green = Color:new({ hex = "#90A959" }),
  yellow = Color:new({ hex = "#F4BF75" }),
  blue = Color:new({ hex = "#6A9FB5" }),
  magenta = Color:new({ hex = "#AA759F" }),
  cyan = Color:new({ hex = "#75B5AA" }),
  white = Color:new({ hex = "#D0D0D0" }),
  bright_black = Color:new({ hex = "#505050" }),
  bright_red = Color:new({ hex = "#AC4142" }),
  bright_green = Color:new({ hex = "#90A959" }),
  bright_yellow = Color:new({ hex = "#F4BF75" }),
  bright_blue = Color:new({ hex = "#6A9FB5" }),
  bright_magenta = Color:new({ hex = "#AA759F" }),
  bright_cyan = Color:new({ hex = "#75B5AA" }),
  bright_white = Color:new({ hex = "#F5F5F5" }),
}

---vim:filetype=lua
