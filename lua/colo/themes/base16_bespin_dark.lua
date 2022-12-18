---@module "colo.themes.base16_bespin_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_bespin",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-bespin.json",
  background = "dark",
  black = Color:new({ hexcode = "#28211c" }),
  red = Color:new({ hexcode = "#cf6a4c" }),
  green = Color:new({ hexcode = "#54be0d" }),
  yellow = Color:new({ hexcode = "#f9ee98" }),
  blue = Color:new({ hexcode = "#5ea6ea" }),
  magenta = Color:new({ hexcode = "#9b859d" }),
  cyan = Color:new({ hexcode = "#afc4db" }),
  white = Color:new({ hexcode = "#8a8986" }),
  bright_black = Color:new({ hexcode = "#666666" }),
  bright_red = Color:new({ hexcode = "#cf6a4c" }),
  bright_green = Color:new({ hexcode = "#54be0d" }),
  bright_yellow = Color:new({ hexcode = "#f9ee98" }),
  bright_blue = Color:new({ hexcode = "#5ea6ea" }),
  bright_magenta = Color:new({ hexcode = "#9b859d" }),
  bright_cyan = Color:new({ hexcode = "#afc4db" }),
  bright_white = Color:new({ hexcode = "#baae9e" }),
}

---vim:filetype=lua
