---@module "colo.themes.decay_normal_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "AlphaTechnolog",
  name = "decay_normal",
  description = "Decay is a theme that uses shades of green along with a dark-toned background for better contrast!. The contrast between background and primary color helps avoiding any eye fatigue when spending a lot of time in front of the computer.",
  source = "https://github.com/AlphaTechnolog",
  background = "dark",
  black = Color:new({ hex = "#171B20" }),
  red = Color:new({ hex = "#e05f65" }),
  green = Color:new({ hex = "#78dba9" }),
  yellow = Color:new({ hex = "#f1cf8a" }),
  blue = Color:new({ hex = "#70a5eb" }),
  magenta = Color:new({ hex = "#c68aee" }),
  cyan = Color:new({ hex = "#74bee9" }),
  white = Color:new({ hex = "#b6beca" }),
  bright_black = Color:new({ hex = "#171B20" }),
  bright_red = Color:new({ hex = "#e5646a" }),
  bright_green = Color:new({ hex = "#94F7C5" }),
  bright_yellow = Color:new({ hex = "#f6d48f" }),
  bright_blue = Color:new({ hex = "#75aaf0" }),
  bright_magenta = Color:new({ hex = "#cb8ff3" }),
  bright_cyan = Color:new({ hex = "#79c3ee" }),
  bright_white = Color:new({ hex = "#b6beca" }),
}

-- vim:filetype=lua
