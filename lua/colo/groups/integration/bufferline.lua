---@module "colo.groups.integration.bufferline"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(c)
  return {
    BufferLineFill = {
      foreground = c.black:lighten(10):brighten(5),
      background = c.black,
    },
    BufferLineBackground = {
      foreground = c.black:lighten(10),
      background = c.black:lighten(2),
    },
    BufferLineTab = {
      foreground = c.black:lighten(10),
      background = c.black:lighten(2),
    },
    BufferLineTabSeparator = {
      foreground = c.black:lighten(2),
      background = c.black:lighten(2),
    },
    BufferLineTabSeparatorSelected = {
      foreground = c.black,
    },
    BufferLineTabSelected = {
      foreground = c.blue,
      background = c.black,
      bold = true,
    },
    BufferLineTabClose = {
      foreground = c.red,
      background = c.black,
    },
    BufferLineCloseButton = {
      foreground = c.red,
      background = c.black:lighten(2),
    },
    BufferLineCloseButtonVisible = {
      foreground = c.red,
      background = c.black:lighten(2),
    },
    BufferLinecloseButtonSelected = {
      foreground = c.black,
      background = c.blue,
    },
    BufferLineBuffer = {
      foreground = c.black:lighten(2),
      background = c.black:lighten(2),
    },
    BufferLineBufferVisible = {
      foreground = c.blue,
      background = c.black:lighten(2),
    },
    BufferLineBufferSelected = {
      foreground = c.black,
      background = c.blue,
      bold = true,
      italic = false,
    },
    BufferLineModified = {
      foreground = c.green,
      background = c.black:lighten(2),
    },
    BufferLineModifiedVisible = {
      foreground = c.green,
      background = c.black:lighten(2),
    },
    BufferLineModifiedSelected = {
      foreground = c.black,
      background = c.blue,
    },
    BufferLineDuplicateSelected = {
      foreground = c.black:lighten(10),
      background = c.black:lighten(2),
      italic = false,
    },
    BufferLineDuplicateVisible = {
      foreground = c.black:lighten(10),
      background = c.black:lighten(2),
      italic = false,
    },
    BufferLineDuplicate = {
      foreground = c.black:lighten(10),
      background = c.black:lighten(2),
      italic = false,
    },
    BufferLinePickSelected = {
      foreground = c.green:lighten(10),
      background = c.blue,
      bold = true,
      italic = false,
    },
    BufferLinePickVisible = {
      background = c.black:lighten(2),
      foreground = c.bright_yellow,
      bold = true,
      italic = false,
    },
    BufferLinePick = {
      foreground = c.magenta:spin(0.1),
      background = c.black:lighten(2),
      bold = true,
      italic = false,
    },
    BufferLineSeparator = {
      foreground = c.black:lighten(2),
      background = c.black:lighten(2),
    },
    BufferLineIndicatorVisible = {
      foreground = c.black:lighten(2),
      background = c.black:lighten(2),
    },
    BufferLineIndicatorSelected = {
      background = c.blue,
      foreground = c.blue,
    },
    BufferLineSeparatorVisible = {
      foreground = c.black:lighten(2),
      background = c.black:lighten(2),
    },
    BufferLineSeparatorSelected = {
      background = c.blue,
      foreground = c.blue,
    },
    BufferLineOffsetSeparator = {
      foreground = c.blue,
      background = c.blue,
    },
  }
end

return M

---vim:filetype=lua
