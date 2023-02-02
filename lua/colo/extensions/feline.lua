local M = {}

M.theme = {
  fg = vim.api.nvim_get_hl_by_name("@string", true).foreground,
  bg = vim.api.nvim_get_hl_by_name("BufferLineTab", true).background,
  transparent = vim.api.nvim_get_hl_by_name("Normal", true).background,
  green = vim.api.nvim_get_hl_by_name("@exception", true).foreground,
  yellow = vim.api.nvim_get_hl_by_name("@constant.builtin", true).foreground,
  purple = vim.api.nvim_get_hl_by_name("@function", true).foreground,
  orange = vim.api.nvim_get_hl_by_name("@character", true).foreground,
  cyan = vim.api.nvim_get_hl_by_name("@property", true).foreground,
  red = vim.api.nvim_get_hl_by_name("@boolean", true).foreground,
  aqua = vim.api.nvim_get_hl_by_name("@include", true).foreground,
  blue = vim.api.nvim_get_hl_by_name("@keyword", true).foreground,
  darkred = vim.api.nvim_get_hl_by_name("@constant", true).foreground,
  gray = vim.api.nvim_get_hl_by_name("ColorColumn", true).foreground,
  pink = vim.api.nvim_get_hl_by_name("@float", true).foreground,
  lime = vim.api.nvim_get_hl_by_name("@keyword.operator", true).foreground,
}

for key, value in pairs(M.theme) do
  M.theme[key] = string.format("#%06X", value)
end

M.colors = {
  ["NORMAL"] = M.theme.green,
  ["OP"] = M.theme.cyan,
  ["INSERT"] = M.theme.aqua,
  ["VISUAL"] = M.theme.yellow,
  ["LINES"] = M.theme.darkred,
  ["BLOCK"] = M.theme.orange,
  ["REPLACE"] = M.theme.purple,
  ["V-REPLACE"] = M.theme.pink,
  ["ENTER"] = M.theme.pink,
  ["MORE"] = M.theme.pink,
  ["SELECT"] = M.theme.darkred,
  ["SHELL"] = M.theme.cyan,
  ["TERM"] = M.theme.lime,
  ["NONE"] = M.theme.gray,
  ["COMMAND"] = M.theme.blue,
}

local modes = setmetatable({
  ["n"] = "N",
  ["no"] = "N",
  ["v"] = "V",
  ["V"] = "VL",
  [""] = "VB",
  ["s"] = "S",
  ["S"] = "SL",
  [""] = "SB",
  ["i"] = "I",
  ["ic"] = "I",
  ["R"] = "R",
  ["Rv"] = "VR",
  ["c"] = "C",
  ["cv"] = "EX",
  ["ce"] = "X",
  ["r"] = "P",
  ["rm"] = "M",
  ["r?"] = "C",
  ["!"] = "SH",
  ["t"] = "T",
}, { __index = function() return "-" end })

M.component = {}

M.component.vim_mode = {
  provider = function() return modes[vim.api.nvim_get_mode().mode] end,
  hl = function()
    return {
      fg = "bg",
      bg = require("feline.providers.vi_mode").get_mode_color(),
      style = "bold",
      name = "NeovimModeHLColor",
    }
  end,
  left_sep = "block",
  right_sep = "block",
}

M.component.git_branch = {
  provider = "git_branch",
  hl = {
    fg = "fg",
    bg = "bg",
    style = "bold",
  },
  left_sep = "block",
  right_sep = "",
}

M.component.git_add = {
  provider = "git_diff_added",
  hl = {
    fg = "green",
    bg = "bg",
  },
  left_sep = "",
  right_sep = "",
}

M.component.git_delete = {
  provider = "git_diff_removed",
  hl = {
    fg = "red",
    bg = "bg",
  },
  left_sep = "",
  right_sep = "",
}

M.component.git_change = {
  provider = "git_diff_changed",
  hl = {
    fg = "purple",
    bg = "bg",
  },
  left_sep = "",
  right_sep = "",
}

M.component.separator = {
  provider = "",
  hl = {
    fg = "bg",
    bg = "bg",
  },
}

M.component.diagnostic_errors = {
  provider = "diagnostic_errors",
  hl = {
    fg = "red",
  },
}

M.component.diagnostic_warnings = {
  provider = "diagnostic_warnings",
  hl = {
    fg = "yellow",
  },
}

M.component.diagnostic_hints = {
  provider = "diagnostic_hints",
  hl = {
    fg = "aqua",
  },
}

M.component.diagnostic_info = {
  provider = "diagnostic_info",
}

M.component.lsp = {
  provider = function()
    if not rawget(vim, "lsp") then return "" end

    local progress = vim.lsp.util.get_progress_messages()[1]
    if vim.o.columns < 120 then return "" end

    local clients = vim.lsp.get_active_clients({ bufnr = 0 })
    if #clients ~= 0 then
      if progress then
        local spinners = {
          "◜ ",
          "◠ ",
          "◝ ",
          "◞ ",
          "◡ ",
          "◟ ",
        }
        local ms = vim.loop.hrtime() / 1000000
        local frame = math.floor(ms / 120) % #spinners
        local content = string.format("%%<%s", spinners[frame + 1])
        return content or ""
      else
        return "לּ LSP"
      end
    end
    return ""
  end,
  hl = function()
    local progress = vim.lsp.util.get_progress_messages()[1]
    return {
      fg = progress and "yellow" or "green",
      bg = "gray",
      style = "bold",
    }
  end,
  left_sep = "",
  right_sep = "block",
}

M.component.file_type = {
  provider = {
    name = "file_type",
    opts = {
      filetype_icon = true,
    },
  },
  hl = {
    fg = "fg",
    bg = "gray",
  },
  left_sep = "block",
  right_sep = "block",
}

M.component.scroll_bar = {
  provider = function()
    local chars = {
      " ",
      " ",
      " ",
      " ",
      " ",
      " ",
      " ",
      " ",
      " ",
      " ",
      " ",
      " ",
      " ",
      " ",
      " ",
      " ",
      " ",
      " ",
      " ",
      " ",
      " ",
      " ",
      " ",
      " ",
      " ",
      " ",
      " ",
      " ",
    }
    local line_ratio = vim.api.nvim_win_get_cursor(0)[1] / vim.api.nvim_buf_line_count(0)
    local position = math.floor(line_ratio * 100)

    local label
    if position <= 5 then
      label = " TOP"
    elseif position >= 95 then
      label = " BOT"
    else
      label = chars[math.floor(line_ratio * #chars)] .. position
    end
    return label
  end,
  hl = function()
    local position = math.floor(vim.api.nvim_win_get_cursor(0)[1] / vim.api.nvim_buf_line_count(0) * 100)
    local fg
    local style

    if position <= 5 then
      fg = "aqua"
      style = "bold"
    elseif position >= 95 then
      fg = "red"
      style = "bold"
    else
      fg = "purple"
      style = nil
    end
    return {
      fg = fg,
      style = style,
      bg = "bg",
    }
  end,
  left_sep = "block",
  right_sep = "block",
}

M.component.search_count = {
  provider = function()
    ---@diagnostic disable-next-line: undefined-field
    if vim.v.hlsearch == 0 then return "" end
    local result = vim.fn.searchcount({ maxcount = 999, timeout = 250 })
    ---@diagnostic disable-next-line: undefined-field
    if result.incomplete == 1 or next(result) == nil then return "" end
    return string.format("%d/%d", result.current, math.min(result.total, result.maxcount))
  end,
  hl = {
    fg = "bg",
    bg = "yellow",
  },
  left_sep = "block",
  right_sep = "block",
}

return M

-- vim:filetype=lua
