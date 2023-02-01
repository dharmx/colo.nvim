---@module "colo.themes.base16_monokai_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_monokai",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-monokai.json",
  background = "dark",
  black = Color:new({ hexcode = "#272822" }),
  red = Color:new({ hexcode = "#f92672" }),
  green = Color:new({ hexcode = "#a6e22e" }),
  yellow = Color:new({ hexcode = "#f4bf75" }),
  blue = Color:new({ hexcode = "#66d9ef" }),
  magenta = Color:new({ hexcode = "#ae81ff" }),
  cyan = Color:new({ hexcode = "#a1efe4" }),
  white = Color:new({ hexcode = "#f8f8f2" }),
  bright_black = Color:new({ hexcode = "#75715e" }),
  bright_red = Color:new({ hexcode = "#f92672" }),
  bright_green = Color:new({ hexcode = "#a6e22e" }),
  bright_yellow = Color:new({ hexcode = "#f4bf75" }),
  bright_blue = Color:new({ hexcode = "#66d9ef" }),
  bright_magenta = Color:new({ hexcode = "#ae81ff" }),
  bright_cyan = Color:new({ hexcode = "#a1efe4" }),
  bright_white = Color:new({ hexcode = "#f9f8f5" }),
}

---vim:filetype=lua
