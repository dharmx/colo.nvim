---@module "colo.themes.base16_default_light"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_default",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/light/base16-default.json",
  background = "light",
  black = Color:new({ hexcode = "#f8f8f8" }),
  red = Color:new({ hexcode = "#ab4642" }),
  green = Color:new({ hexcode = "#a1b56c" }),
  yellow = Color:new({ hexcode = "#f7ca88" }),
  blue = Color:new({ hexcode = "#7cafc2" }),
  magenta = Color:new({ hexcode = "#ba8baf" }),
  cyan = Color:new({ hexcode = "#86c1b9" }),
  white = Color:new({ hexcode = "#383838" }),
  bright_black = Color:new({ hexcode = "#b8b8b8" }),
  bright_red = Color:new({ hexcode = "#ab4642" }),
  bright_green = Color:new({ hexcode = "#a1b56c" }),
  bright_yellow = Color:new({ hexcode = "#f7ca88" }),
  bright_blue = Color:new({ hexcode = "#7cafc2" }),
  bright_magenta = Color:new({ hexcode = "#ba8baf" }),
  bright_cyan = Color:new({ hexcode = "#86c1b9" }),
  bright_white = Color:new({ hexcode = "#181818" }),
}

---vim:filetype=lua
