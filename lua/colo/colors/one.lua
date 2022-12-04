---@module "colo.colors.one"
---@author dharmx
---@license GPL-3.0

local Color = require("colo.color")

return {
  author = "Atom",
  name = "one",
  description = "Atom's One syntax theme.",
  source = "https://github.com/joshdick/onedark.vim",
  dark = {
    black = Color:new({ hexcode = "#1E222A" }),
    red = Color:new({ hexcode = "#E06C75" }),
    green = Color:new({ hexcode = "#98C379" }),
    yellow = Color:new({ hexcode = "#E5C07B" }),
    blue = Color:new({ hexcode = "#61AFEF" }),
    magenta = Color:new({ hexcode = "#C678DD" }),
    cyan = Color:new({ hexcode = "#56B6C2" }),
    white = Color:new({ hexcode = "#ABB2BF" }),
    bright_black = Color:new({ hexcode = "#353B45" }),
    bright_red = Color:new({ hexcode = "#BE5046" }),
    bright_green = Color:new({ hexcode = "#7ECA9C" }),
    bright_yellow = Color:new({ hexcode = "#D19A66" }),
    bright_blue = Color:new({ hexcode = "#A3B8EF" }),
    bright_magenta = Color:new({ hexcode = "#C882E7" }),
    bright_cyan = Color:new({ hexcode = "#519ABA" }),
    bright_white = Color:new({ hexcode = "#c8ccd4" }),
  },
}

---vim:filetype=lua
