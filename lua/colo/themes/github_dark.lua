---@module "colo.colors.github_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "vv9k",
  name = "github",
  description = "The GitHub theme.",
  source = "https://github.com/vv9k",
  background = "dark",
  black = Color:new({ hexcode = "#0D1117" }),
  red = Color:new({ hexcode = "#FA7970" }),
  green = Color:new({ hexcode = "#7CE38B" }),
  yellow = Color:new({ hexcode = "#FAA356" }),
  blue = Color:new({ hexcode = "#77BDFB" }),
  magenta = Color:new({ hexcode = "#CEA5FB" }),
  cyan = Color:new({ hexcode = "#A2D2FB" }),
  white = Color:new({ hexcode = "#C6CDD5" }),
  bright_black = Color:new({ hexcode = "#161B22" }),
  bright_red = Color:new({ hexcode = "#FA7970" }),
  bright_green = Color:new({ hexcode = "#7CE38B" }),
  bright_yellow = Color:new({ hexcode = "#FAA356" }),
  bright_blue = Color:new({ hexcode = "#77BDFB" }),
  bright_magenta = Color:new({ hexcode = "#CEA5FB" }),
  bright_cyan = Color:new({ hexcode = "#A2D2FB" }),
  bright_white = Color:new({ hexcode = "#ECF2F8" }),
}

---vim:filetype=lua
