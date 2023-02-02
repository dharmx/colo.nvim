---@module "colo.themes.base16_chalk_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_chalk",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-chalk.json",
  background = "dark",
  black = Color:new({ hex = "#151515" }),
  red = Color:new({ hex = "#fb9fb1" }),
  green = Color:new({ hex = "#acc267" }),
  yellow = Color:new({ hex = "#ddb26f" }),
  blue = Color:new({ hex = "#6fc2ef" }),
  magenta = Color:new({ hex = "#e1a3ee" }),
  cyan = Color:new({ hex = "#12cfc0" }),
  white = Color:new({ hex = "#d0d0d0" }),
  bright_black = Color:new({ hex = "#505050" }),
  bright_red = Color:new({ hex = "#fb9fb1" }),
  bright_green = Color:new({ hex = "#acc267" }),
  bright_yellow = Color:new({ hex = "#ddb26f" }),
  bright_blue = Color:new({ hex = "#6fc2ef" }),
  bright_magenta = Color:new({ hex = "#e1a3ee" }),
  bright_cyan = Color:new({ hex = "#12cfc0" }),
  bright_white = Color:new({ hex = "#f5f5f5" }),
}

-- vim:filetype=lua
