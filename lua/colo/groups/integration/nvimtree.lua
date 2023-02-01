---@module "colo.groups.integration.nvimtree"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(c)
  return {
    NvimTreeVertSplit = { background = c.black:darken(2), foreground = c.black:darken(2) },
    NvimTreeWinSeparator = { background = c.black:darken(2), foreground = c.black:darken(2) },
    NvimTreeNormal = { background = c.black:darken(2), foreground = c.white:darken(10) },
    NvimTreeNormalNC = { background = c.black:darken(2), foreground = c.white:darken(10) },
    NvimTreeCursorColumn = { link = "NvimTreeCursorColumn" },
    NvimTreeFolderName = { link = "NvimTreeFolderIcon" },
    NvimTreeWindowPicker = { background = c.black:lighten(3):brighten(1), foreground = c.blue },
    NvimTreeBookmark = { foreground = c.yellow },
    NvimTreeClosedFolderIcon = { foreground = c.bright_magenta },
    NvimTreeCursorLineNr = { foreground = c.bright_green },
    NvimTreeEmptyFolderName = { foreground = c.bright_magenta:desaturate(20) },
    NvimTreeExecFile = { foreground = c.magenta:spin(0.1) },
    NvimTreeFileDeleted = { foreground = c.bright_red },
    NvimTreeFileDirty = { foreground = c.cyan },
    NvimTreeFileIgnored = { foreground = c.bright_black },
    NvimTreeFileMerge = { foreground = c.bright_green },
    NvimTreeFileNew = { foreground = c.yellow },
    NvimTreeFileRenamed = { foreground = c.bright_blue },
    NvimTreeFileStaged = { foreground = c.magenta:spin(0.1) },
    NvimTreeFolderIcon = { foreground = c.bright_magenta },
    NvimTreeGitDeleted = { foreground = c.red },
    NvimTreeGitDirty = { foreground = c.cyan },
    NvimTreeGitIgnored = { foreground = c.bright_black },
    NvimTreeGitMerge = { foreground = c.bright_cyan },
    NvimTreeGitNew = { foreground = c.yellow },
    NvimTreeGitRenamed = { foreground = c.bright_blue },
    NvimTreeGitStaged = { foreground = c.magenta:spin(0.1) },
    NvimTreeImageFile = { foreground = c.bright_magenta },
    NvimTreeIndentMarker = { foreground = c.black:brighten(1):lighten(5) },
    NvimTreePopup = { foreground = c.blue },
    NvimTreeRootFolder = { foreground = c.red },
    NvimTreeSymlink = { foreground = c.cyan },
    NvimTreeCursorLine = { foreground = c.black:lighten(1) },
  }
end

return M

---vim:filetype=lua
