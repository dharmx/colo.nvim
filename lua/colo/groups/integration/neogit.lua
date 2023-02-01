---@module "colo.groups.integration.neogit"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(col)
  return {
    NeogitCommitViewHeader = { background = col.blue, foreground = col.black, bold = true },
    NeogitDiffAdd = { background = col.black:brighten(2), foreground = col.blue },
    NeogitDiffDelete = { background = col.black:brighten(2):lighten(2), foreground = col.red },
    NeogitHunkHeader = { background = col.bright_black, foreground = col.yellow },
    NeogitNotificationInfo = { background = col.black, foreground = col.blue },
    NeogitNotificationWarning = { background = col.black, foreground = col.yellow },
    NeogitNotificationError = { background = col.black, foreground = col.red },
    NeogitHunkHeaderHighlight = { background = col.yellow, foreground = col.black },
    NeogitUnmergedchanges = { foreground = col.bright_green, bold = true },
    NeogitUnpulledchanges = { foreground = col.bright_cyan, bold = true },
    NeogitUnstagedchanges = { foreground = col.bright_red, bold = true },
    NeogitRecentcommits = { foreground = col.green, bold = true },
    NeogitStagedchanges = { foreground = col.yellow, bold = true },
    NeogitUntrackedfiles = { foreground = col.bright_blue, bold = true },
    NeogitBranch = { foreground = col.bright_green, bold = true },
    NeogitRemote = { foreground = col.bright_yellow, bold = true },
    NeogitRebasing = { foreground = col.yellow, bold = true },
    NeogitObjectId = { foreground = col.magenta },
    NeogitFilePath = { foreground = col.cyan },
    NeogitUnmergedInto = { foreground = col.blue },
    NeogitUnpulledFrom = { foreground = col.bright_cyan },
    NeogitFold = { foreground = col.bright_cyan },
    NeogitStash = { foreground = col.cyan },
    NeogitStashes = { foreground = col.cyan, bold = true },
    NeogitRebaseDone = { foreground = col.green, bold = true },
    NeogitDiffContextHighlight = { background = col.black:lighten(2):brighten(2) },
  }
end

return M

---vim:filetype=lua
