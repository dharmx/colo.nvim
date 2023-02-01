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
  black = Color:new({ hex = "#f8f8f8" }),
  red = Color:new({ hex = "#ab4642" }),
  green = Color:new({ hex = "#a1b56c" }),
  yellow = Color:new({ hex = "#f7ca88" }),
  blue = Color:new({ hex = "#7cafc2" }),
  magenta = Color:new({ hex = "#ba8baf" }),
  cyan = Color:new({ hex = "#86c1b9" }),
  white = Color:new({ hex = "#383838" }),
  bright_black = Color:new({ hex = "#b8b8b8" }),
  bright_red = Color:new({ hex = "#ab4642" }),
  bright_green = Color:new({ hex = "#a1b56c" }),
  bright_yellow = Color:new({ hex = "#f7ca88" }),
  bright_blue = Color:new({ hex = "#7cafc2" }),
  bright_magenta = Color:new({ hex = "#ba8baf" }),
  bright_cyan = Color:new({ hex = "#86c1b9" }),
  bright_white = Color:new({ hex = "#181818" }),
}

---vim:filetype=lua
