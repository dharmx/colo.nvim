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
  black = Color:new({ hexcode = "#151515" }),
  red = Color:new({ hexcode = "#fb9fb1" }),
  green = Color:new({ hexcode = "#acc267" }),
  yellow = Color:new({ hexcode = "#ddb26f" }),
  blue = Color:new({ hexcode = "#6fc2ef" }),
  magenta = Color:new({ hexcode = "#e1a3ee" }),
  cyan = Color:new({ hexcode = "#12cfc0" }),
  white = Color:new({ hexcode = "#d0d0d0" }),
  bright_black = Color:new({ hexcode = "#505050" }),
  bright_red = Color:new({ hexcode = "#fb9fb1" }),
  bright_green = Color:new({ hexcode = "#acc267" }),
  bright_yellow = Color:new({ hexcode = "#ddb26f" }),
  bright_blue = Color:new({ hexcode = "#6fc2ef" }),
  bright_magenta = Color:new({ hexcode = "#e1a3ee" }),
  bright_cyan = Color:new({ hexcode = "#12cfc0" }),
  bright_white = Color:new({ hexcode = "#f5f5f5" }),
}

---vim:filetype=lua
