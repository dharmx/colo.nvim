---@module "colo.groups.extensions.incline"
---@author dharmx
---@license GPL-3.0

local ok, devicons = pcall(require, "nvim-web-devicons")

local M = {}

local colors = {
  theme_bg = vim.api.nvim_get_hl_by_name("InclineThemeBG", true).background,
  fg = vim.api.nvim_get_hl_by_name("InclineFG", true).foreground,
  fg_nc = vim.api.nvim_get_hl_by_name("InclineFGNC", true).foreground,
  bg = vim.api.nvim_get_hl_by_name("InclineBG", true).background,
  bg_nc = vim.api.nvim_get_hl_by_name("InclineBGNC", true).background,
  cursorline = vim.api.nvim_get_hl_by_name("InclineCursorLine", true).background,
  cursorline_nc = vim.api.nvim_get_hl_by_name("InclineCursorLineNC", true).background,
}

M.config = ok
    and {
      render = function(props)
        local bufname = vim.api.nvim_buf_get_name(props.buf)
        local modified = vim.api.nvim_buf_get_option(props.buf, "modified")
        local focused = vim.api.nvim_get_current_win() == props.win
        local fg = focused and colors.foreground or colors.fg_nc
        local bg = focused and colors.background or colors.bg_nc
        local fname = bufname == "" and "[No Name]" or vim.fn.fnamemodify(bufname, ":t")

        local icon, icon_fg
        if bufname ~= "" then
          icon, icon_fg = devicons.get_icon_color(fname)
        end
        if not icon or icon == "" then
          local icon_name
          local filetype = vim.api.nvim_buf_get_option(props.buf, "filetype")
          if filetype ~= "" then icon_name = devicons.get_icon_name_by_filetype(filetype) end
          if icon_name and icon_name ~= "" then
            icon, icon_fg = require("nvim-web-devicons").get_icon_color(icon_name)
          end
        end
        icon = icon or " "
        icon_fg = props.focused and (icon_fg or colors.foreground) or colors.fg_nc

        return {
          guibg = bg,
          guifg = fg,
          " ",
          { icon, guifg = icon_fg },
          " ",
          { fname, gui = modified and "bold" or nil },
          { modified and "+ " or " ", guifg = colors.fg_nc },
        }
      end,
      window = {
        margin = { horizontal = 0, vertical = 0 },
        padding = 0,
        zindex = 51,
        placement = { horizontal = "right", vertical = "top" },
      },
      hide = {
        cursorline = "focused_win",
        focused_win = false,
      },
    }
  or {}

return M

-- vim:filetype=lua
