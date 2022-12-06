---@module "colo.colors.radium_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "dharmx",
  name = "radium",
  description = "A radioactive colorscheme.",
  source = "https://github.com/dharmx",
  background = "dark",
  black = Color:new({ hexcode = "#101317" }),
  red = Color:new({ hexcode = "#F87070" }),
  green = Color:new({ hexcode = "#79DCAA" }),
  yellow = Color:new({ hexcode = "#FFE59E" }),
  blue = Color:new({ hexcode = "#7AB0DF" }),
  magenta = Color:new({ hexcode = "#C397D8" }),
  cyan = Color:new({ hexcode = "#70C0BA" }),
  white = Color:new({ hexcode = "#D4D4D5" }),
  bright_black = Color:new({ hexcode = "#171C21" }),
  bright_red = Color:new({ hexcode = "#FB7373" }),
  bright_green = Color:new({ hexcode = "#36C692" }),
  bright_yellow = Color:new({ hexcode = "#FCCF67" }),
  bright_blue = Color:new({ hexcode = "#5FB0FC" }),
  bright_magenta = Color:new({ hexcode = "#B77EE0" }),
  bright_cyan = Color:new({ hexcode = "#54CED6" }),
  bright_white = Color:new({ hexcode = "#FFFFFF" }),
}

---vim:filetype=lua
