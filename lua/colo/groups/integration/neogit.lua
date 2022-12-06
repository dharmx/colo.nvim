local M = {}

function M.get(col, deco)
  return {
    NeogitCommitViewHeader = { background = col.blue, foreground = col.black, deco.B },
    NeogitDiffAdd = { background = col.black:brighten(2), foreground = col.blue },
    NeogitDiffDelete = { background = col.black:brighten(2):lighten(2), foreground = col.red },
    NeogitHunkHeader = { background = col.bright_black, foreground = col.yellow },
    NeogitNotificationInfo = { background = col.black, foreground = col.blue },
    NeogitNotificationWarning = { background = col.black, foreground = col.yellow },
    NeogitNotificationError = { background = col.black, foreground = col.red },
    NeogitHunkHeaderHighlight = { background = col.yellow, foreground = col.black },
    NeogitUnmergedchanges = { foreground = col.bright_green, deco.B },
    NeogitUnpulledchanges = { foreground = col.bright_cyan, deco.B },
    NeogitUnstagedchanges = { foreground = col.bright_red, deco.B },
    NeogitRecentcommits = { foreground = col.green, deco.B },
    NeogitStagedchanges = { foreground = col.yellow, deco.B },
    NeogitUntrackedfiles = { foreground = col.bright_blue, deco.B },
    NeogitBranch = { foreground = col.bright_green, deco.B },
    NeogitRemote = { foreground = col.bright_yellow, deco.B },
    NeogitRebasing = { foreground = col.yellow, deco.B },
    NeogitObjectId = { foreground = col.magenta },
    NeogitFilePath = { foreground = col.cyan },
    NeogitUnmergedInto = { foreground = col.blue },
    NeogitUnpulledFrom = { foreground = col.bright_cyan },
    NeogitFold = { foreground = col.bright_cyan },
    NeogitStash = { foreground = col.cyan },
    NeogitStashes = { foreground = col.cyan, deco.B },
    NeogitRebaseDone = { foreground = col.green, deco.B },
    NeogitDiffContextHighlight = { background = col.black:lighten(2):brighten(2) },
  }
end

return M

---vim:filetype=lua
