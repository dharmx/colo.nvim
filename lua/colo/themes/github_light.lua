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
  black = Color:new({ hex = "#ffffff" }),
  red = Color:new({ hex = "#970b16" }),
  green = Color:new({ hex = "#07962a" }),
  yellow = Color:new({ hex = "#f8eec7" }),
  blue = Color:new({ hex = "#003e8a" }),
  magenta = Color:new({ hex = "#e94691" }),
  cyan = Color:new({ hex = "#89d1ec" }),
  white = Color:new({ hex = "#3e3e3e" }),
  bright_black = Color:new({ hex = "#666666" }),
  bright_red = Color:new({ hex = "#970b16" }),
  bright_green = Color:new({ hex = "#07962a" }),
  bright_yellow = Color:new({ hex = "#f8eec7" }),
  bright_blue = Color:new({ hex = "#003e8a" }),
  bright_magenta = Color:new({ hex = "#e94691" }),
  bright_cyan = Color:new({ hex = "#89d1ec" }),
  bright_white = Color:new({ hex = "#3e3e3e" }),
}

---vim:filetype=lua
