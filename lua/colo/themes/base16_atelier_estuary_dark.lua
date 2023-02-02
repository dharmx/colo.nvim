---@module "colo.themes.base16_atelier_estuary_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_atelier_estuary",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-atelier-estuary.json",
  background = "dark",
  black = Color:new({ hex = "#22221b" }),
  red = Color:new({ hex = "#ba6236" }),
  green = Color:new({ hex = "#7d9726" }),
  yellow = Color:new({ hex = "#a5980d" }),
  blue = Color:new({ hex = "#36a166" }),
  magenta = Color:new({ hex = "#5f9182" }),
  cyan = Color:new({ hex = "#5b9d48" }),
  white = Color:new({ hex = "#929181" }),
  bright_black = Color:new({ hex = "#6c6b5a" }),
  bright_red = Color:new({ hex = "#ba6236" }),
  bright_green = Color:new({ hex = "#7d9726" }),
  bright_yellow = Color:new({ hex = "#a5980d" }),
  bright_blue = Color:new({ hex = "#36a166" }),
  bright_magenta = Color:new({ hex = "#5f9182" }),
  bright_cyan = Color:new({ hex = "#5b9d48" }),
  bright_white = Color:new({ hex = "#f4f3ec" }),
}

-- vim:filetype=lua
