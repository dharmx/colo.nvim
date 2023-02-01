---@module "colo.groups.integration.bufferline"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(col)
  return {
    BufferLineFill = {
      foreground = col.black:lighten(10):brighten(5),
      background = col.black,
    },
    BufferLineBackground = {
      foreground = col.black:lighten(10),
      background = col.black:lighten(2),
    },
    BufferLineTab = {
      foreground = col.black:lighten(10),
      background = col.black:lighten(2),
    },
    BufferLineTabSeparator = {
      foreground = col.black:lighten(2),
      background = col.black:lighten(2),
    },
    BufferLineTabSeparatorSelected = {
      foreground = col.black,
    },
    BufferLineTabSelected = {
      foreground = col.blue,
      background = col.black,
      bold = true,
    },
    BufferLineTabClose = {
      foreground = col.red,
      background = col.black,
    },
    BufferLineCloseButton = {
      foreground = col.red,
      background = col.black:lighten(2),
    },
    BufferLineCloseButtonVisible = {
      foreground = col.red,
      background = col.black:lighten(2),
    },
    BufferLinecloseButtonSelected = {
      foreground = col.black,
      background = col.blue,
    },
    BufferLineBuffer = {
      foreground = col.black:lighten(2),
      background = col.black:lighten(2),
    },
    BufferLineBufferVisible = {
      foreground = col.blue,
      background = col.black:lighten(2),
    },
    BufferLineBufferSelected = {
      foreground = col.black,
      background = col.blue,
      bold = true,
      italic = false,
    },
    BufferLineModified = {
      foreground = col.green,
      background = col.black:lighten(2),
    },
    BufferLineModifiedVisible = {
      foreground = col.green,
      background = col.black:lighten(2),
    },
    BufferLineModifiedSelected = {
      foreground = col.black,
      background = col.blue,
    },
    BufferLineDuplicateSelected = {
      foreground = col.black:lighten(10),
      background = col.black:lighten(2),
      italic = false,
    },
    BufferLineDuplicateVisible = {
      foreground = col.black:lighten(10),
      background = col.black:lighten(2),
      italic = false,
    },
    BufferLineDuplicate = {
      foreground = col.black:lighten(10),
      background = col.black:lighten(2),
      italic = false,
    },
    BufferLinePickSelected = {
      foreground = col.green:lighten(10),
      background = col.blue,
      bold = true,
      italic = false,
    },
    BufferLinePickVisible = {
      background = col.black:lighten(2),
      foreground = col.bright_yellow,
      bold = true,
      italic = false,
    },
    BufferLinePick = {
      foreground = col.magenta:spin(0.1),
      background = col.black:lighten(2),
      bold = true,
      italic = false,
    },
    BufferLineSeparator = {
      foreground = col.black:lighten(2),
      background = col.black:lighten(2),
    },
    BufferLineIndicatorVisible = {
      foreground = col.black:lighten(2),
      background = col.black:lighten(2),
    },
    BufferLineIndicatorSelected = {
      background = col.blue,
      foreground = col.blue,
    },
    BufferLineSeparatorVisible = {
      foreground = col.black:lighten(2),
      background = col.black:lighten(2),
    },
    BufferLineSeparatorSelected = {
      background = col.blue,
      foreground = col.blue,
    },
    BufferLineOffsetSeparator = {
      foreground = col.blue,
      background = col.blue,
    },
  }
end

return M

---vim:filetype=lua
