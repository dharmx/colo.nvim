---@module "colo.themes.base16_gruvbox_pale_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_gruvbox_pale",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-gruvbox-pale.json",
  background = "dark",
  black = Color:new({ hex = "#262626" }),
  red = Color:new({ hex = "#d75f5f" }),
  green = Color:new({ hex = "#afaf00" }),
  yellow = Color:new({ hex = "#ffaf00" }),
  blue = Color:new({ hex = "#83adad" }),
  magenta = Color:new({ hex = "#d485ad" }),
  cyan = Color:new({ hex = "#85ad85" }),
  white = Color:new({ hex = "#dab997" }),
  bright_black = Color:new({ hex = "#8a8a8a" }),
  bright_red = Color:new({ hex = "#d75f5f" }),
  bright_green = Color:new({ hex = "#afaf00" }),
  bright_yellow = Color:new({ hex = "#ffaf00" }),
  bright_blue = Color:new({ hex = "#83adad" }),
  bright_magenta = Color:new({ hex = "#d485ad" }),
  bright_cyan = Color:new({ hex = "#85ad85" }),
  bright_white = Color:new({ hex = "#ebdbb2" }),
}

-- vim:filetype=lua
