---@module "colo.themes.radium_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "dharmx",
  name = "radium",
  description = "A radioactive colorscheme.",
  source = "https://github.com/dharmx",
  background = "dark",
  black = Color:new({ hex = "#101317" }),
  red = Color:new({ hex = "#F87070" }),
  green = Color:new({ hex = "#79DCAA" }),
  yellow = Color:new({ hex = "#FFE59E" }),
  blue = Color:new({ hex = "#7AB0DF" }),
  magenta = Color:new({ hex = "#C397D8" }),
  cyan = Color:new({ hex = "#70C0BA" }),
  white = Color:new({ hex = "#D4D4D5" }),
  bright_black = Color:new({ hex = "#171C21" }),
  bright_red = Color:new({ hex = "#FB7373" }),
  bright_green = Color:new({ hex = "#36C692" }),
  bright_yellow = Color:new({ hex = "#FCCF67" }),
  bright_blue = Color:new({ hex = "#5FB0FC" }),
  bright_magenta = Color:new({ hex = "#B77EE0" }),
  bright_cyan = Color:new({ hex = "#54CED6" }),
  bright_white = Color:new({ hex = "#FFFFFF" }),
}

---vim:filetype=lua
