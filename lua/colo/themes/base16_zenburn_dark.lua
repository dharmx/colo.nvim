---@module "colo.themes.base16_zenburn_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_zenburn",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-zenburn.json",
  background = "dark",
  black = Color:new({ hexcode = "#3f3f3f" }),
  red = Color:new({ hexcode = "#dca3a3" }),
  green = Color:new({ hexcode = "#5f7f5f" }),
  yellow = Color:new({ hexcode = "#e0cf9f" }),
  blue = Color:new({ hexcode = "#7cb8bb" }),
  magenta = Color:new({ hexcode = "#dc8cc3" }),
  cyan = Color:new({ hexcode = "#93e0e3" }),
  white = Color:new({ hexcode = "#dcdccc" }),
  bright_black = Color:new({ hexcode = "#4f4f4f" }),
  bright_red = Color:new({ hexcode = "#dca3a3" }),
  bright_green = Color:new({ hexcode = "#5f7f5f" }),
  bright_yellow = Color:new({ hexcode = "#e0cf9f" }),
  bright_blue = Color:new({ hexcode = "#7cb8bb" }),
  bright_magenta = Color:new({ hexcode = "#dc8cc3" }),
  bright_cyan = Color:new({ hexcode = "#93e0e3" }),
  bright_white = Color:new({ hexcode = "#ffffff" }),
}

---vim:filetype=lua
