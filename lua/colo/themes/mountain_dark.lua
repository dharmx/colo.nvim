---@module "colo.themes.mountain_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "pradyungn",
  name = "mountain",
  description = "Neutral. Calm.",
  source = "https://github.com/mountain-theme/Mountain",
  background = "dark",
  black = Color:new({ hex = "#0F0F0F" }),
  red = Color:new({ hex = "#AC8A8C" }),
  green = Color:new({ hex = "#8AAC8B" }),
  yellow = Color:new({ hex = "#ACA98A" }),
  blue = Color:new({ hex = "#8F8AAC" }),
  magenta = Color:new({ hex = "#AC8AAC" }),
  cyan = Color:new({ hex = "#8AABAC" }),
  white = Color:new({ hex = "#F0F0F0" }),
  bright_black = Color:new({ hex = "#191919" }),
  bright_red = Color:new({ hex = "#AC8A8C" }),
  bright_green = Color:new({ hex = "#8AAC8B" }),
  bright_yellow = Color:new({ hex = "#C6A679" }),
  bright_blue = Color:new({ hex = "#7797B7" }),
  bright_magenta = Color:new({ hex = "#AC8AAC" }),
  bright_cyan = Color:new({ hex = "#8AABAC" }),
  bright_white = Color:new({ hex = "#E7E7E7" }),
}

---vim:filetype=lua
