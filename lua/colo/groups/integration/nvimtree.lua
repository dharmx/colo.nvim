---@module "colo.groups.integration.nvimtree"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(col)
  return {
    NvimTreeVertSplit = { background = col.black:darken(2), foreground = col.black:darken(2) },
    NvimTreeWinSeparator = { background = col.black:darken(2), foreground = col.black:darken(2) },
    NvimTreeNormal = { background = col.black:darken(2), foreground = col.white:darken(10) },
    NvimTreeNormalNC = { background = col.black:darken(2), foreground = col.white:darken(10) },
    NvimTreeCursorColumn = { link = "NvimTreeCursorColumn" },
    NvimTreeFolderName = { link = "NvimTreeFolderIcon" },
    NvimTreeWindowPicker = { background = col.black:lighten(3):brighten(1), foreground = col.blue },
    NvimTreeBookmark = { foreground = col.yellow },
    NvimTreeClosedFolderIcon = { foreground = col.bright_magenta },
    NvimTreeCursorLineNr = { foreground = col.bright_green },
    NvimTreeEmptyFolderName = { foreground = col.bright_magenta:desaturate(20) },
    NvimTreeExecFile = { foreground = col.magenta:spin(0.1) },
    NvimTreeFileDeleted = { foreground = col.bright_red },
    NvimTreeFileDirty = { foreground = col.cyan },
    NvimTreeFileIgnored = { foreground = col.bright_black },
    NvimTreeFileMerge = { foreground = col.bright_green },
    NvimTreeFileNew = { foreground = col.yellow },
    NvimTreeFileRenamed = { foreground = col.bright_blue },
    NvimTreeFileStaged = { foreground = col.magenta:spin(0.1) },
    NvimTreeFolderIcon = { foreground = col.bright_magenta },
    NvimTreeGitDeleted = { foreground = col.red },
    NvimTreeGitDirty = { foreground = col.cyan },
    NvimTreeGitIgnored = { foreground = col.bright_black },
    NvimTreeGitMerge = { foreground = col.bright_cyan },
    NvimTreeGitNew = { foreground = col.yellow },
    NvimTreeGitRenamed = { foreground = col.bright_blue },
    NvimTreeGitStaged = { foreground = col.magenta:spin(0.1) },
    NvimTreeImageFile = { foreground = col.bright_magenta },
    NvimTreeIndentMarker = { foreground = col.black:brighten(1):lighten(5) },
    NvimTreePopup = { foreground = col.blue },
    NvimTreeRootFolder = { foreground = col.red },
    NvimTreeSymlink = { foreground = col.cyan },
    NvimTreeCursorLine = { foreground = col.black:lighten(1) },
  }
end

return M

---vim:filetype=lua
