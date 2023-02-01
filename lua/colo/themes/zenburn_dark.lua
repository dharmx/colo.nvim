---@module "colo.themes.zenburn_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "zenburn",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/zenburn.json",
  background = "dark",
  black = Color:new({ hexcode = "#3f3f3f" }),
  red = Color:new({ hexcode = "#cc9393" }),
  green = Color:new({ hexcode = "#7f9f7f" }),
  yellow = Color:new({ hexcode = "#d0bf8f" }),
  blue = Color:new({ hexcode = "#6ca0a3" }),
  magenta = Color:new({ hexcode = "#dc8cc3" }),
  cyan = Color:new({ hexcode = "#93e0e3" }),
  white = Color:new({ hexcode = "#dcdccc" }),
  bright_black = Color:new({ hexcode = "#828282" }),
  bright_red = Color:new({ hexcode = "#cc9393" }),
  bright_green = Color:new({ hexcode = "#7f9f7f" }),
  bright_yellow = Color:new({ hexcode = "#d0bf8f" }),
  bright_blue = Color:new({ hexcode = "#6ca0a3" }),
  bright_magenta = Color:new({ hexcode = "#dc8cc3" }),
  bright_cyan = Color:new({ hexcode = "#93e0e3" }),
  bright_white = Color:new({ hexcode = "#dcdccc" }),
}

---vim:filetype=lua
