---@module "colo.themes.base16_gruvbox_soft_light"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_gruvbox_soft",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/light/base16-gruvbox-soft.json",
  background = "light",
  black = Color:new({ hex = "#f2e5bc" }),
  red = Color:new({ hex = "#9d0006" }),
  green = Color:new({ hex = "#79740e" }),
  yellow = Color:new({ hex = "#b57614" }),
  blue = Color:new({ hex = "#076678" }),
  magenta = Color:new({ hex = "#8f3f71" }),
  cyan = Color:new({ hex = "#427b58" }),
  white = Color:new({ hex = "#504945" }),
  bright_black = Color:new({ hex = "#bdae93" }),
  bright_red = Color:new({ hex = "#9d0006" }),
  bright_green = Color:new({ hex = "#79740e" }),
  bright_yellow = Color:new({ hex = "#b57614" }),
  bright_blue = Color:new({ hex = "#076678" }),
  bright_magenta = Color:new({ hex = "#8f3f71" }),
  bright_cyan = Color:new({ hex = "#427b58" }),
  bright_white = Color:new({ hex = "#282828" }),
}

---vim:filetype=lua
