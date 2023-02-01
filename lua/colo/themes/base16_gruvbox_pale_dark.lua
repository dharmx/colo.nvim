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
  black = Color:new({ hexcode = "#262626" }),
  red = Color:new({ hexcode = "#d75f5f" }),
  green = Color:new({ hexcode = "#afaf00" }),
  yellow = Color:new({ hexcode = "#ffaf00" }),
  blue = Color:new({ hexcode = "#83adad" }),
  magenta = Color:new({ hexcode = "#d485ad" }),
  cyan = Color:new({ hexcode = "#85ad85" }),
  white = Color:new({ hexcode = "#dab997" }),
  bright_black = Color:new({ hexcode = "#8a8a8a" }),
  bright_red = Color:new({ hexcode = "#d75f5f" }),
  bright_green = Color:new({ hexcode = "#afaf00" }),
  bright_yellow = Color:new({ hexcode = "#ffaf00" }),
  bright_blue = Color:new({ hexcode = "#83adad" }),
  bright_magenta = Color:new({ hexcode = "#d485ad" }),
  bright_cyan = Color:new({ hexcode = "#85ad85" }),
  bright_white = Color:new({ hexcode = "#ebdbb2" }),
}

---vim:filetype=lua
