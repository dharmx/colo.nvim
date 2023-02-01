---@module "colo.themes.base16_gruvbox_medium_light"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_gruvbox_medium",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/light/base16-gruvbox-medium.json",
  background = "light",
  black = Color:new({ hexcode = "#fbf1c7" }),
  red = Color:new({ hexcode = "#9d0006" }),
  green = Color:new({ hexcode = "#79740e" }),
  yellow = Color:new({ hexcode = "#b57614" }),
  blue = Color:new({ hexcode = "#076678" }),
  magenta = Color:new({ hexcode = "#8f3f71" }),
  cyan = Color:new({ hexcode = "#427b58" }),
  white = Color:new({ hexcode = "#504945" }),
  bright_black = Color:new({ hexcode = "#bdae93" }),
  bright_red = Color:new({ hexcode = "#9d0006" }),
  bright_green = Color:new({ hexcode = "#79740e" }),
  bright_yellow = Color:new({ hexcode = "#b57614" }),
  bright_blue = Color:new({ hexcode = "#076678" }),
  bright_magenta = Color:new({ hexcode = "#8f3f71" }),
  bright_cyan = Color:new({ hexcode = "#427b58" }),
  bright_white = Color:new({ hexcode = "#282828" }),
}

---vim:filetype=lua
