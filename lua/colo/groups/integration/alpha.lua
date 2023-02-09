local M = {}

function M.prime(c)
  return {
    AlphaKeyPrefix = { background = c.blue, foreground = c.black },
    AlphaFooting = { foreground = c.magenta },
    AlphaHeading = { foreground = c.bright_black:lighten(1) },
    AlphaLoaded = { foreground = c.bright_black:brighten(4):lighten(1) },
    AlphaScroll = { foreground = c.magenta },
    AlphaButtonLabelText = { foreground = c.yellow },
  }
end

return M
