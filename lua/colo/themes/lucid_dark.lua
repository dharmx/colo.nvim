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
  black = Color:new({ hexcode = "#36323d" }),
  red = Color:new({ hexcode = "#db0088" }),
  green = Color:new({ hexcode = "#3fc997" }),
  yellow = Color:new({ hexcode = "#fde9a2" }),
  blue = Color:new({ hexcode = "#83a8d1" }),
  magenta = Color:new({ hexcode = "#7470ce" }),
  cyan = Color:new({ hexcode = "#99feff" }),
  white = Color:new({ hexcode = "#e4e0ed" }),
  bright_black = Color:new({ hexcode = "#534d5e" }),
  bright_red = Color:new({ hexcode = "#db0088" }),
  bright_green = Color:new({ hexcode = "#8fc7db" }),
  bright_yellow = Color:new({ hexcode = "#d0ffc3" }),
  bright_blue = Color:new({ hexcode = "#83a8d1" }),
  bright_magenta = Color:new({ hexcode = "#847d91" }),
  bright_cyan = Color:new({ hexcode = "#b3e4eb" }),
  bright_white = Color:new({ hexcode = "#beb8cc" }),
}

---vim:filetype=lua
