---@module "colo.themes.base16_github_light"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_github",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/light/base16-github.json",
  background = "light",
  black = Color:new({ hex = "#ffffff" }),
  red = Color:new({ hex = "#ed6a43" }),
  green = Color:new({ hex = "#183691" }),
  yellow = Color:new({ hex = "#795da3" }),
  blue = Color:new({ hex = "#795da3" }),
  magenta = Color:new({ hex = "#a71d5d" }),
  cyan = Color:new({ hex = "#183691" }),
  white = Color:new({ hex = "#333333" }),
  bright_black = Color:new({ hex = "#969896" }),
  bright_red = Color:new({ hex = "#ed6a43" }),
  bright_green = Color:new({ hex = "#183691" }),
  bright_yellow = Color:new({ hex = "#795da3" }),
  bright_blue = Color:new({ hex = "#795da3" }),
  bright_magenta = Color:new({ hex = "#a71d5d" }),
  bright_cyan = Color:new({ hex = "#183691" }),
  bright_white = Color:new({ hex = "#333333" }),
}

---vim:filetype=lua
