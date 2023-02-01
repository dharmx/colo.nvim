---@module "colo.themes.base16_mellow_purple_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_mellow_purple",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-mellow-purple.json",
  background = "dark",
  black = Color:new({ hexcode = "#1e0528" }),
  red = Color:new({ hexcode = "#00d9e9" }),
  green = Color:new({ hexcode = "#05cb0d" }),
  yellow = Color:new({ hexcode = "#955ae7" }),
  blue = Color:new({ hexcode = "#550068" }),
  magenta = Color:new({ hexcode = "#8991bb" }),
  cyan = Color:new({ hexcode = "#b900b1" }),
  white = Color:new({ hexcode = "#ffeeff" }),
  bright_black = Color:new({ hexcode = "#320f55" }),
  bright_red = Color:new({ hexcode = "#00d9e9" }),
  bright_green = Color:new({ hexcode = "#05cb0d" }),
  bright_yellow = Color:new({ hexcode = "#955ae7" }),
  bright_blue = Color:new({ hexcode = "#550068" }),
  bright_magenta = Color:new({ hexcode = "#8991bb" }),
  bright_cyan = Color:new({ hexcode = "#b900b1" }),
  bright_white = Color:new({ hexcode = "#f8c0ff" }),
}

---vim:filetype=lua
