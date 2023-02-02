---@module "colo.themes.one_dark"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "Atom",
  name = "one",
  description = "Atom's One syntax theme.",
  source = "https://github.com/joshdick/onedark.vim",
  background = "dark",
  black = Color:new({ hex = "#1E222A" }),
  red = Color:new({ hex = "#E06C75" }),
  green = Color:new({ hex = "#98C379" }),
  yellow = Color:new({ hex = "#E5C07B" }),
  blue = Color:new({ hex = "#61AFEF" }),
  magenta = Color:new({ hex = "#C678DD" }),
  cyan = Color:new({ hex = "#56B6C2" }),
  white = Color:new({ hex = "#ABB2BF" }),
  bright_black = Color:new({ hex = "#353B45" }),
  bright_red = Color:new({ hex = "#BE5046" }),
  bright_green = Color:new({ hex = "#7ECA9C" }),
  bright_yellow = Color:new({ hex = "#D19A66" }),
  bright_blue = Color:new({ hex = "#A3B8EF" }),
  bright_magenta = Color:new({ hex = "#C882E7" }),
  bright_cyan = Color:new({ hex = "#519ABA" }),
  bright_white = Color:new({ hex = "#c8ccd4" }),
}

-- vim:filetype=lua
