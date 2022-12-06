---@module "colo.colors.aquarium_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "FrenzyExists",
  name = "aquarium",
  description = "Aquarium, a simple vibrant theme.",
  source = "https://github.com/frenzyexists/aquarium-vim",
  background = "dark",
  black = Color:new({ hexcode = "#20202A" }),
  red = Color:new({ hexcode = "#EBB9B9" }),
  green = Color:new({ hexcode = "#BEE0A8" }),
  yellow = Color:new({ hexcode = "#E8CCA7" }),
  blue = Color:new({ hexcode = "#A7B7D6" }),
  magenta = Color:new({ hexcode = "#F6BBE7" }),
  cyan = Color:new({ hexcode = "#B8DEEB" }),
  white = Color:new({ hexcode = "#CED4DF" }),
  bright_black = Color:new({ hexcode = "#2C2E3E" }),
  bright_red = Color:new({ hexcode = "#EAC1C1" }),
  bright_green = Color:new({ hexcode = "#B1DBA4" }),
  bright_yellow = Color:new({ hexcode = "#E6DFB8" }),
  bright_blue = Color:new({ hexcode = "#C6D0E9" }),
  bright_magenta = Color:new({ hexcode = "#E8B6E9" }),
  bright_cyan = Color:new({ hexcode = "#CDDBF9" }),
  bright_white = Color:new({ hexcode = "#C5CBD6" }),
}

---vim:filetype=lua
