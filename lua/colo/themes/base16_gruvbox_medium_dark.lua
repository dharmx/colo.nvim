---@module "colo.themes.base16_gruvbox_medium_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_gruvbox_medium",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-gruvbox-medium.json",
  background = "dark",
  black = Color:new({ hex = "#282828" }),
  red = Color:new({ hex = "#fb4934" }),
  green = Color:new({ hex = "#b8bb26" }),
  yellow = Color:new({ hex = "#fabd2f" }),
  blue = Color:new({ hex = "#83a598" }),
  magenta = Color:new({ hex = "#d3869b" }),
  cyan = Color:new({ hex = "#8ec07c" }),
  white = Color:new({ hex = "#d5c4a1" }),
  bright_black = Color:new({ hex = "#665c54" }),
  bright_red = Color:new({ hex = "#fb4934" }),
  bright_green = Color:new({ hex = "#b8bb26" }),
  bright_yellow = Color:new({ hex = "#fabd2f" }),
  bright_blue = Color:new({ hex = "#83a598" }),
  bright_magenta = Color:new({ hex = "#d3869b" }),
  bright_cyan = Color:new({ hex = "#8ec07c" }),
  bright_white = Color:new({ hex = "#fbf1c7" }),
}

---vim:filetype=lua
