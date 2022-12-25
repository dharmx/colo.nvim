---@module "colo.themes.base16_one_light"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_one",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/light/base16-one.json",
  background = "light",
  black = Color:new({ hexcode = "#fafafa" }),
  red = Color:new({ hexcode = "#ca1243" }),
  green = Color:new({ hexcode = "#50a14f" }),
  yellow = Color:new({ hexcode = "#c18401" }),
  blue = Color:new({ hexcode = "#4078f2" }),
  magenta = Color:new({ hexcode = "#a626a4" }),
  cyan = Color:new({ hexcode = "#0184bc" }),
  white = Color:new({ hexcode = "#383a42" }),
  bright_black = Color:new({ hexcode = "#a0a1a7" }),
  bright_red = Color:new({ hexcode = "#ca1243" }),
  bright_green = Color:new({ hexcode = "#50a14f" }),
  bright_yellow = Color:new({ hexcode = "#c18401" }),
  bright_blue = Color:new({ hexcode = "#4078f2" }),
  bright_magenta = Color:new({ hexcode = "#a626a4" }),
  bright_cyan = Color:new({ hexcode = "#0184bc" }),
  bright_white = Color:new({ hexcode = "#090a0b" }),
}

---vim:filetype=lua
