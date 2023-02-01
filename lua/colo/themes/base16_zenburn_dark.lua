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
  black = Color:new({ hex = "#3f3f3f" }),
  red = Color:new({ hex = "#dca3a3" }),
  green = Color:new({ hex = "#5f7f5f" }),
  yellow = Color:new({ hex = "#e0cf9f" }),
  blue = Color:new({ hex = "#7cb8bb" }),
  magenta = Color:new({ hex = "#dc8cc3" }),
  cyan = Color:new({ hex = "#93e0e3" }),
  white = Color:new({ hex = "#dcdccc" }),
  bright_black = Color:new({ hex = "#4f4f4f" }),
  bright_red = Color:new({ hex = "#dca3a3" }),
  bright_green = Color:new({ hex = "#5f7f5f" }),
  bright_yellow = Color:new({ hex = "#e0cf9f" }),
  bright_blue = Color:new({ hex = "#7cb8bb" }),
  bright_magenta = Color:new({ hex = "#dc8cc3" }),
  bright_cyan = Color:new({ hex = "#93e0e3" }),
  bright_white = Color:new({ hex = "#ffffff" }),
}

---vim:filetype=lua
