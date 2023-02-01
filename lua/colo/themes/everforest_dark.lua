---@module "colo.themes.everforest_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "sainnhe",
  name = "everforest",
  description = "Comfortable & Pleasant Color Scheme for Vim.",
  source = "https://github.com/sainnhe/everforest",
  background = "dark",
  black = Color:new({ hexcode = "#2B3339" }),
  red = Color:new({ hexcode = "#E67E80" }),
  green = Color:new({ hexcode = "#83C092" }),
  yellow = Color:new({ hexcode = "#DBBC7F" }),
  blue = Color:new({ hexcode = "#7393B3" }),
  magenta = Color:new({ hexcode = "#ECAFCC" }),
  cyan = Color:new({ hexcode = "#7FBBB3" }),
  white = Color:new({ hexcode = "#D3C6AA" }),
  bright_black = Color:new({ hexcode = "#323C41" }),
  bright_red = Color:new({ hexcode = "#E69875" }),
  bright_green = Color:new({ hexcode = "#A7C080" }),
  bright_yellow = Color:new({ hexcode = "#D1B171" }),
  bright_blue = Color:new({ hexcode = "#7393B3" }),
  bright_magenta = Color:new({ hexcode = "#D699B6" }),
  bright_cyan = Color:new({ hexcode = "#78B4AC" }),
  bright_white = Color:new({ hexcode = "#DDD0B4" }),
}

---vim:filetype=lua
