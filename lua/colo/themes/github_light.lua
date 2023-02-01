---@module "colo.themes.github_light"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "",
  name = "github",
  description = "",
  source = "https://github.com/dylanaraps/pywal/tree/master/pywal/colorschemes/light/github.json",
  background = "light",
  black = Color:new({ hexcode = "#ffffff" }),
  red = Color:new({ hexcode = "#970b16" }),
  green = Color:new({ hexcode = "#07962a" }),
  yellow = Color:new({ hexcode = "#f8eec7" }),
  blue = Color:new({ hexcode = "#003e8a" }),
  magenta = Color:new({ hexcode = "#e94691" }),
  cyan = Color:new({ hexcode = "#89d1ec" }),
  white = Color:new({ hexcode = "#3e3e3e" }),
  bright_black = Color:new({ hexcode = "#666666" }),
  bright_red = Color:new({ hexcode = "#970b16" }),
  bright_green = Color:new({ hexcode = "#07962a" }),
  bright_yellow = Color:new({ hexcode = "#f8eec7" }),
  bright_blue = Color:new({ hexcode = "#003e8a" }),
  bright_magenta = Color:new({ hexcode = "#e94691" }),
  bright_cyan = Color:new({ hexcode = "#89d1ec" }),
  bright_white = Color:new({ hexcode = "#3e3e3e" }),
}

---vim:filetype=lua
