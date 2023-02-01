---@module "colo.groups.integration.neogit"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(c)
  return {
    NeogitCommitViewHeader = { background = c.blue, foreground = c.black, bold = true },
    NeogitDiffAdd = { background = c.black:brighten(2), foreground = c.blue },
    NeogitDiffDelete = { background = c.black:brighten(2):lighten(2), foreground = c.red },
    NeogitHunkHeader = { background = c.bright_black, foreground = c.yellow },
    NeogitNotificationInfo = { background = c.black, foreground = c.blue },
    NeogitNotificationWarning = { background = c.black, foreground = c.yellow },
    NeogitNotificationError = { background = c.black, foreground = c.red },
    NeogitHunkHeaderHighlight = { background = c.yellow, foreground = c.black },
    NeogitUnmergedchanges = { foreground = c.bright_green, bold = true },
    NeogitUnpulledchanges = { foreground = c.bright_cyan, bold = true },
    NeogitUnstagedchanges = { foreground = c.bright_red, bold = true },
    NeogitRecentcommits = { foreground = c.green, bold = true },
    NeogitStagedchanges = { foreground = c.yellow, bold = true },
    NeogitUntrackedfiles = { foreground = c.bright_blue, bold = true },
    NeogitBranch = { foreground = c.bright_green, bold = true },
    NeogitRemote = { foreground = c.bright_yellow, bold = true },
    NeogitRebasing = { foreground = c.yellow, bold = true },
    NeogitObjectId = { foreground = c.magenta },
    NeogitFilePath = { foreground = c.cyan },
    NeogitUnmergedInto = { foreground = c.blue },
    NeogitUnpulledFrom = { foreground = c.bright_cyan },
    NeogitFold = { foreground = c.bright_cyan },
    NeogitStash = { foreground = c.cyan },
    NeogitStashes = { foreground = c.cyan, bold = true },
    NeogitRebaseDone = { foreground = c.green, bold = true },
    NeogitDiffContextHighlight = { background = c.black:lighten(2):brighten(2) },
  }
end

return M

---vim:filetype=lua
