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
  black = Color:new({ hexcode = "#0F0F0F" }),
  red = Color:new({ hexcode = "#AC8A8C" }),
  green = Color:new({ hexcode = "#8AAC8B" }),
  yellow = Color:new({ hexcode = "#ACA98A" }),
  blue = Color:new({ hexcode = "#8F8AAC" }),
  magenta = Color:new({ hexcode = "#AC8AAC" }),
  cyan = Color:new({ hexcode = "#8AABAC" }),
  white = Color:new({ hexcode = "#F0F0F0" }),
  bright_black = Color:new({ hexcode = "#191919" }),
  bright_red = Color:new({ hexcode = "#AC8A8C" }),
  bright_green = Color:new({ hexcode = "#8AAC8B" }),
  bright_yellow = Color:new({ hexcode = "#C6A679" }),
  bright_blue = Color:new({ hexcode = "#7797B7" }),
  bright_magenta = Color:new({ hexcode = "#AC8AAC" }),
  bright_cyan = Color:new({ hexcode = "#8AABAC" }),
  bright_white = Color:new({ hexcode = "#E7E7E7" }),
}

---vim:filetype=lua
