---@module "colo.themes.lucid_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "cseelus",
  name = "lucid",
  description = "A color scheme for VIM with vivid highlights and friendly, clear colors.",
  source = "https://github.com/cseelus/vim-colors-lucid",
  background = "dark",
  black = Color:new({ hex = "#36323d" }),
  red = Color:new({ hex = "#db0088" }),
  green = Color:new({ hex = "#3fc997" }),
  yellow = Color:new({ hex = "#fde9a2" }),
  blue = Color:new({ hex = "#83a8d1" }),
  magenta = Color:new({ hex = "#7470ce" }),
  cyan = Color:new({ hex = "#99feff" }),
  white = Color:new({ hex = "#e4e0ed" }),
  bright_black = Color:new({ hex = "#534d5e" }),
  bright_red = Color:new({ hex = "#db0088" }),
  bright_green = Color:new({ hex = "#8fc7db" }),
  bright_yellow = Color:new({ hex = "#d0ffc3" }),
  bright_blue = Color:new({ hex = "#83a8d1" }),
  bright_magenta = Color:new({ hex = "#847d91" }),
  bright_cyan = Color:new({ hex = "#b3e4eb" }),
  bright_white = Color:new({ hex = "#beb8cc" }),
}

---vim:filetype=lua
