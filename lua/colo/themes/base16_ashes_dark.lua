---@module "colo.themes.base16_ashes_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "base16_ashes",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/dark/base16-ashes.json",
  background = "dark",
  black = Color:new({ hexcode = "#1C2023" }),
  red = Color:new({ hexcode = "#C7AE95" }),
  green = Color:new({ hexcode = "#95C7AE" }),
  yellow = Color:new({ hexcode = "#AEC795" }),
  blue = Color:new({ hexcode = "#AE95C7" }),
  magenta = Color:new({ hexcode = "#C795AE" }),
  cyan = Color:new({ hexcode = "#95AEC7" }),
  white = Color:new({ hexcode = "#C7CCD1" }),
  bright_black = Color:new({ hexcode = "#747C84" }),
  bright_red = Color:new({ hexcode = "#C7AE95" }),
  bright_green = Color:new({ hexcode = "#95C7AE" }),
  bright_yellow = Color:new({ hexcode = "#AEC795" }),
  bright_blue = Color:new({ hexcode = "#AE95C7" }),
  bright_magenta = Color:new({ hexcode = "#C795AE" }),
  bright_cyan = Color:new({ hexcode = "#95AEC7" }),
  bright_white = Color:new({ hexcode = "#F3F4F5" }),
}

---vim:filetype=lua
