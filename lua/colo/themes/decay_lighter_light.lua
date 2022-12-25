---@module "colo.themes.decay_lighter_light"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "AlphaTechnolog",
  name = "decay_lighter",
  description = "Decay is a theme that uses shades of green along with a dark-toned background for better contrast!. The contrast between background and primary color helps avoiding any eye fatigue when spending a lot of time in front of the computer.",
  source = "https://github.com/AlphaTechnolog",
  background = "light",
  black = Color:new({ hexcode = "#dee1e6" }),
  red = Color:new({ hexcode = "#bd3c42" }),
  green = Color:new({ hexcode = "#69b373" }),
  yellow = Color:new({ hexcode = "#ceac67" }),
  blue = Color:new({ hexcode = "#4d82c8" }),
  magenta = Color:new({ hexcode = "#a367cb" }),
  cyan = Color:new({ hexcode = "#519bc6" }),
  white = Color:new({ hexcode = "#101419" }),
  bright_black = Color:new({ hexcode = "#dee1e6" }),
  bright_red = Color:new({ hexcode = "#c24147" }),
  bright_green = Color:new({ hexcode = "#6eb878" }),
  bright_yellow = Color:new({ hexcode = "#d3b16c" }),
  bright_blue = Color:new({ hexcode = "#5287cd" }),
  bright_magenta = Color:new({ hexcode = "#a86cd0" }),
  bright_cyan = Color:new({ hexcode = "#56a0cb" }),
  bright_white = Color:new({ hexcode = "#101419" }),
}

---vim:filetype=lua
