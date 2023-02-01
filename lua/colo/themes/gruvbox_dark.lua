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
  black = Color:new({ hex = "#282828" }),
  red = Color:new({ hex = "#cc241d" }),
  green = Color:new({ hex = "#98971a" }),
  yellow = Color:new({ hex = "#d79921" }),
  blue = Color:new({ hex = "#458588" }),
  magenta = Color:new({ hex = "#b16286" }),
  cyan = Color:new({ hex = "#689d6a" }),
  white = Color:new({ hex = "#a89984" }),
  bright_black = Color:new({ hex = "#928374" }),
  bright_red = Color:new({ hex = "#fb4934" }),
  bright_green = Color:new({ hex = "#b8bb26" }),
  bright_yellow = Color:new({ hex = "#fabd2f" }),
  bright_blue = Color:new({ hex = "#83a598" }),
  bright_magenta = Color:new({ hex = "#d3869b" }),
  bright_cyan = Color:new({ hex = "#8ec07c" }),
  bright_white = Color:new({ hex = "#ebdbb2" }),
}

---vim:filetype=lua
