---@module "colo.themes.base16_atelier_heath_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_atelier_heath",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-atelier-heath.json",
  background = "dark",
  black = Color:new({ hex = "#1b181b" }),
  red = Color:new({ hex = "#ca402b" }),
  green = Color:new({ hex = "#918b3b" }),
  yellow = Color:new({ hex = "#bb8a35" }),
  blue = Color:new({ hex = "#516aec" }),
  magenta = Color:new({ hex = "#7b59c0" }),
  cyan = Color:new({ hex = "#159393" }),
  white = Color:new({ hex = "#ab9bab" }),
  bright_black = Color:new({ hex = "#776977" }),
  bright_red = Color:new({ hex = "#ca402b" }),
  bright_green = Color:new({ hex = "#918b3b" }),
  bright_yellow = Color:new({ hex = "#bb8a35" }),
  bright_blue = Color:new({ hex = "#516aec" }),
  bright_magenta = Color:new({ hex = "#7b59c0" }),
  bright_cyan = Color:new({ hex = "#159393" }),
  bright_white = Color:new({ hex = "#f7f3f7" }),
}

---vim:filetype=lua
