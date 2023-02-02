local M = {}

function M.generate_button(callback, opts)
  local set = {
    type = "button",
    on_press = callback,
    val = ("%s%s%s"):format(opts.icon.value, (" "):rep(opts.spacing or 2), opts.label.value),
    opts = {
      position = vim.F.if_nil(opts.align, "center"),
      shortcut = vim.F.if_nil(opts.shortcut.value, "DUMMY"),
      cursor = vim.F.if_nil(opts.cursor, 5),
      width = vim.F.if_nil(opts.width, 25),
      align_shortcut = vim.F.if_nil(opts.shortcut.align, "center"),
      hl_shortcut = vim.F.if_nil(opts.shortcut.hl, "AlphaKeyPrefix"),
      hl = {},
    },
  }

  if opts.shortcut.before then
    set.opts.shortcut = opts.shortcut.before .. set.opts.shortcut
  else
    set.opts.shortcut = " " .. set.opts.shortcut
  end

  if opts.shortcut.after then
    set.opts.shortcut = set.opts.shortcut .. opts.shortcut.after
  else
    set.opts.shortcut = set.opts.shortcut .. " "
  end

  local icon_length = opts.icon.value:len()
  local label_length = opts.label.value:len()
  set.opts.hl = {
    { opts.icon.hl, 1, icon_length },
    { opts.label.hl, icon_length + opts.spacing, icon_length + (opts.spacing or 2) + label_length },
  }

  return set
end

local heading = {
  type = "text",
  val = require("colo.logo").OCTOPI,
  opts = {
    position = "center",
    hl = "AlphaHeading",
  },
}

local buttons = {
  type = "group",
  val = {
    M.generate_button(function() require("telescope.builtin").live_grep() end, {
      width = 25,
      cursor = 15,
      align = "center",
      spacing = 2,
      shortcut = { value = " T ", align = "right", hl = "AlphaKeyPrefix", lead = " ", trail = " " },
      label = { value = "Grep", hl = "MoreMsg" },
      icon = { value = " ", hl = "MsgSeparator" },
    }),
    M.generate_button(function() require("telescope.builtin").find_files() end, {
      width = 25,
      cursor = 5,
      align = "center",
      spacing = 2,
      shortcut = { value = " T ", align = "right", hl = "AlphaKeyPrefix", lead = " ", trail = " " },
      label = { value = "Files", hl = "MoreMsg" },
      icon = { value = " ", hl = "MsgSeparator" },
    }),
    M.generate_button(function() require("telescope.builtin").keymaps() end, {
      width = 25,
      cursor = 5,
      align = "center",
      spacing = 2,
      shortcut = { value = " T ", align = "right", hl = "AlphaKeyPrefix", lead = " ", trail = " " },
      label = { value = "Keymaps", hl = "MoreMsg" },
      icon = { value = " ", hl = "MsgSeparator" },
    }),
  },
  opts = {
    position = "center",
    spacing = 1,
  },
}

local extras = {
  type = "text",
  val = string.format("  Loaded %d runtime paths.", #vim.api.nvim_list_runtime_paths()),
  opts = {
    position = "center",
    hl = "AlphaLoaded",
  },
}

local footing = {
  type = "text",
  val = os.getenv("USER") .. "@" .. vim.fn.hostname(),
  opts = {
    position = "center",
    hl = "AlphaFooting",
  },
}

M.config = {
  layout = {
    { type = "padding", val = 9 },
    heading,
    { type = "padding", val = 2 },
    footing,
    { type = "padding", val = 1 },
    buttons,
    { type = "padding", val = 1 },
    extras,
  },
  opts = { margin = 15 },
}

function M.autocmd()
  vim.api.nvim_create_autocmd("FileType", {
    callback = function()
      if vim.bo.filetype == "alpha" then
        vim.keymap.set(
          "n",
          "q",
          function() require("alpha").start(false) end,
          { silent = true, buffer = vim.api.nvim_get_current_buf() }
        )
      end
    end,
  })
end

return M

-- vim:filetype=lua
