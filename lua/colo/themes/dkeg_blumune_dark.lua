---@module "colo.themes.dkeg_blumune_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "dkeg_blumune",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/dkeg-blumune.json",
  background = "dark",
  black = Color:new({ hex = "#1c1f23" }),
  red = Color:new({ hex = "#234640" }),
  green = Color:new({ hex = "#555552" }),
  yellow = Color:new({ hex = "#7e6b5f" }),
  blue = Color:new({ hex = "#384758" }),
  magenta = Color:new({ hex = "#444d4d" }),
  cyan = Color:new({ hex = "#415459" }),
  white = Color:new({ hex = "#ccc7bf" }),
  bright_black = Color:new({ hex = "#33383f" }),
  bright_red = Color:new({ hex = "#234640" }),
  bright_green = Color:new({ hex = "#555552" }),
  bright_yellow = Color:new({ hex = "#7e6b5f" }),
  bright_blue = Color:new({ hex = "#384758" }),
  bright_magenta = Color:new({ hex = "#444d4d" }),
  bright_cyan = Color:new({ hex = "#415459" }),
  bright_white = Color:new({ hex = "#e3e0db" }),
}

-- vim:filetype=lua
