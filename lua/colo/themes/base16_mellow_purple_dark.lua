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
  black = Color:new({ hex = "#1e0528" }),
  red = Color:new({ hex = "#00d9e9" }),
  green = Color:new({ hex = "#05cb0d" }),
  yellow = Color:new({ hex = "#955ae7" }),
  blue = Color:new({ hex = "#550068" }),
  magenta = Color:new({ hex = "#8991bb" }),
  cyan = Color:new({ hex = "#b900b1" }),
  white = Color:new({ hex = "#ffeeff" }),
  bright_black = Color:new({ hex = "#320f55" }),
  bright_red = Color:new({ hex = "#00d9e9" }),
  bright_green = Color:new({ hex = "#05cb0d" }),
  bright_yellow = Color:new({ hex = "#955ae7" }),
  bright_blue = Color:new({ hex = "#550068" }),
  bright_magenta = Color:new({ hex = "#8991bb" }),
  bright_cyan = Color:new({ hex = "#b900b1" }),
  bright_white = Color:new({ hex = "#f8c0ff" }),
}

---vim:filetype=lua
