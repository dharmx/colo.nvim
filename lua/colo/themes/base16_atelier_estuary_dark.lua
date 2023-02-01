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
  black = Color:new({ hexcode = "#22221b" }),
  red = Color:new({ hexcode = "#ba6236" }),
  green = Color:new({ hexcode = "#7d9726" }),
  yellow = Color:new({ hexcode = "#a5980d" }),
  blue = Color:new({ hexcode = "#36a166" }),
  magenta = Color:new({ hexcode = "#5f9182" }),
  cyan = Color:new({ hexcode = "#5b9d48" }),
  white = Color:new({ hexcode = "#929181" }),
  bright_black = Color:new({ hexcode = "#6c6b5a" }),
  bright_red = Color:new({ hexcode = "#ba6236" }),
  bright_green = Color:new({ hexcode = "#7d9726" }),
  bright_yellow = Color:new({ hexcode = "#a5980d" }),
  bright_blue = Color:new({ hexcode = "#36a166" }),
  bright_magenta = Color:new({ hexcode = "#5f9182" }),
  bright_cyan = Color:new({ hexcode = "#5b9d48" }),
  bright_white = Color:new({ hexcode = "#f4f3ec" }),
}

---vim:filetype=lua
