---@module "colo.themes.base16_atelier_cave_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_atelier_cave",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-atelier-cave.json",
  background = "dark",
  black = Color:new({ hex = "#19171c" }),
  red = Color:new({ hex = "#be4678" }),
  green = Color:new({ hex = "#2a9292" }),
  yellow = Color:new({ hex = "#a06e3b" }),
  blue = Color:new({ hex = "#576ddb" }),
  magenta = Color:new({ hex = "#955ae7" }),
  cyan = Color:new({ hex = "#398bc6" }),
  white = Color:new({ hex = "#8b8792" }),
  bright_black = Color:new({ hex = "#655f6d" }),
  bright_red = Color:new({ hex = "#be4678" }),
  bright_green = Color:new({ hex = "#2a9292" }),
  bright_yellow = Color:new({ hex = "#a06e3b" }),
  bright_blue = Color:new({ hex = "#576ddb" }),
  bright_magenta = Color:new({ hex = "#955ae7" }),
  bright_cyan = Color:new({ hex = "#398bc6" }),
  bright_white = Color:new({ hex = "#efecf4" }),
}

-- vim:filetype=lua
