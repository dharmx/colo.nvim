---@module "colo.themes.decay_darker_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "AlphaTechnolog",
  name = "decay_darker",
  description = "Decay is a theme that uses shades of green along with a dark-toned background for better contrast!. The contrast between background and primary color helps avoiding any eye fatigue when spending a lot of time in front of the computer.",
  source = "https://github.com/AlphaTechnolog",
  background = "dark",
  black = Color:new({ hexcode = "#101419" }),
  red = Color:new({ hexcode = "#e05f65" }),
  green = Color:new({ hexcode = "#78dba9" }),
  yellow = Color:new({ hexcode = "#f1cf8a" }),
  blue = Color:new({ hexcode = "#70a5eb" }),
  magenta = Color:new({ hexcode = "#c68aee" }),
  cyan = Color:new({ hexcode = "#74bee9" }),
  white = Color:new({ hexcode = "#b6beca" }),
  bright_black = Color:new({ hexcode = "#101419" }),
  bright_red = Color:new({ hexcode = "#e5646a" }),
  bright_green = Color:new({ hexcode = "#94f7c5" }),
  bright_yellow = Color:new({ hexcode = "#f6d48f" }),
  bright_blue = Color:new({ hexcode = "#75aaf0" }),
  bright_magenta = Color:new({ hexcode = "#cb8ff3" }),
  bright_cyan = Color:new({ hexcode = "#79c3ee" }),
  bright_white = Color:new({ hexcode = "#b6beca" }),
}

---vim:filetype=lua
