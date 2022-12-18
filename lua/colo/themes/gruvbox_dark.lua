---@module "colo.themes.gruvbox_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "gruvbox",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/gruvbox.json",
  background = "dark",
  black = Color:new({ hexcode = "#282828" }),
  red = Color:new({ hexcode = "#cc241d" }),
  green = Color:new({ hexcode = "#98971a" }),
  yellow = Color:new({ hexcode = "#d79921" }),
  blue = Color:new({ hexcode = "#458588" }),
  magenta = Color:new({ hexcode = "#b16286" }),
  cyan = Color:new({ hexcode = "#689d6a" }),
  white = Color:new({ hexcode = "#a89984" }),
  bright_black = Color:new({ hexcode = "#928374" }),
  bright_red = Color:new({ hexcode = "#fb4934" }),
  bright_green = Color:new({ hexcode = "#b8bb26" }),
  bright_yellow = Color:new({ hexcode = "#fabd2f" }),
  bright_blue = Color:new({ hexcode = "#83a598" }),
  bright_magenta = Color:new({ hexcode = "#d3869b" }),
  bright_cyan = Color:new({ hexcode = "#8ec07c" }),
  bright_white = Color:new({ hexcode = "#ebdbb2" }),
}

---vim:filetype=lua
