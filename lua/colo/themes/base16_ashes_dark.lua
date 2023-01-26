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
  black = Color:new({ hex = "#1C2023" }),
  red = Color:new({ hex = "#C7AE95" }),
  green = Color:new({ hex = "#95C7AE" }),
  yellow = Color:new({ hex = "#AEC795" }),
  blue = Color:new({ hex = "#AE95C7" }),
  magenta = Color:new({ hex = "#C795AE" }),
  cyan = Color:new({ hex = "#95AEC7" }),
  white = Color:new({ hex = "#C7CCD1" }),
  bright_black = Color:new({ hex = "#747C84" }),
  bright_red = Color:new({ hex = "#C7AE95" }),
  bright_green = Color:new({ hex = "#95C7AE" }),
  bright_yellow = Color:new({ hex = "#AEC795" }),
  bright_blue = Color:new({ hex = "#AE95C7" }),
  bright_magenta = Color:new({ hex = "#C795AE" }),
  bright_cyan = Color:new({ hex = "#95AEC7" }),
  bright_white = Color:new({ hex = "#F3F4F5" }),
}

---vim:filetype=lua
