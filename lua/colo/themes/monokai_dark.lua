---@module "colo.themes.monokai_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "monokai",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/monokai.json",
  background = "dark",
  black = Color:new({ hex = "#272822" }),
  red = Color:new({ hex = "#f92672" }),
  green = Color:new({ hex = "#a6e22e" }),
  yellow = Color:new({ hex = "#f4bf75" }),
  blue = Color:new({ hex = "#66d9ef" }),
  magenta = Color:new({ hex = "#ae81ff" }),
  cyan = Color:new({ hex = "#a1efe4" }),
  white = Color:new({ hex = "#f8f8f2" }),
  bright_black = Color:new({ hex = "#75715e" }),
  bright_red = Color:new({ hex = "#f92672" }),
  bright_green = Color:new({ hex = "#a6e22e" }),
  bright_yellow = Color:new({ hex = "#f4bf75" }),
  bright_blue = Color:new({ hex = "#66d9ef" }),
  bright_magenta = Color:new({ hex = "#ae81ff" }),
  bright_cyan = Color:new({ hex = "#a1efe4" }),
  bright_white = Color:new({ hex = "#f9f8f5" }),
}

---vim:filetype=lua
