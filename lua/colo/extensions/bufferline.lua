local bufferline = require("bufferline")
local col = require("colo.api").theme.current()

local highlights = {
  fill = {
    fg = col.black:lighten(10):brighten(5):hex(true),
    bg = col.black:hex(true),
  },
  background = {
    fg = col.black:lighten(10):hex(true),
    bg = col.black:lighten(2):hex(true),
  },
  tab = {
    fg = col.black:lighten(10):hex(true),
    bg = col.black:lighten(2):hex(true),
  },
  tab_separator = {
    fg = col.black:lighten(2):hex(true),
    bg = col.black:lighten(2):hex(true),
  },
  tab_separator_selected = {
    fg = col.black:hex(true),
  },
  tab_selected = {
    fg = col.blue:hex(true),
    bg = col.black:hex(true),
    bold = true,
  },
  tab_close = {
    fg = col.red:hex(true),
    bg = col.black:hex(true),
  },
  close_button = {
    fg = col.red:hex(true),
    bg = col.black:lighten(2):hex(true),
  },
  close_button_visible = {
    fg = col.red:hex(true),
    bg = col.black:lighten(2):hex(true),
  },
  close_button_selected = {
    fg = col.black:hex(true),
    bg = col.blue:hex(true),
  },
  buffer = {
    fg = col.black:lighten(2):hex(true),
    bg = col.black:lighten(2):hex(true),
  },
  buffer_visible = {
    fg = col.blue:hex(true),
    bg = col.black:lighten(2):hex(true),
  },
  buffer_selected = {
    fg = col.black:hex(true),
    bg = col.blue:hex(true),
    bold = true,
    italic = false,
  },
  modified = {
    fg = col.green:hex(true),
    bg = col.black:lighten(2):hex(true),
  },
  modified_visible = {
    fg = col.green:hex(true),
    bg = col.black:lighten(2):hex(true),
  },
  modified_selected = {
    fg = col.black:hex(true),
    bg = col.blue:hex(true),
  },
  duplicate_selected = {
    fg = col.black:lighten(10):hex(true),
    bg = col.black:lighten(2):hex(true),
    italic = false,
  },
  duplicate_visible = {
    fg = col.black:lighten(10):hex(true),
    bg = col.black:lighten(2):hex(true),
    italic = false,
  },
  duplicate = {
    fg = col.black:lighten(10):hex(true),
    bg = col.black:lighten(2):hex(true),
    italic = false,
  },
  pick_selected = {
    fg = col.green:lighten(10):hex(true),
    bg = col.blue:hex(true),
    bold = true,
    italic = false,
  },
  pick_visible = {
    bg = col.black:lighten(2):hex(true),
    fg = col.bright_yellow:hex(true),
    bold = true,
    italic = false,
  },
  pick = {
    fg = col.magenta:spin(0.1):hex(true),
    bg = col.black:lighten(2):hex(true),
    bold = true,
    italic = false,
  },
  separator = {
    fg = col.black:lighten(2):hex(true),
    bg = col.black:lighten(2):hex(true),
  },
  indicator_visible = {
    fg = col.black:lighten(2):hex(true),
    bg = col.black:lighten(2):hex(true),
  },
  indicator_selected = {
    bg = col.blue:hex(true),
    fg = col.blue:hex(true),
  },
  separator_visible = {
    fg = col.black:lighten(2):hex(true),
    bg = col.black:lighten(2):hex(true),
  },
  separator_selected = {
    bg = col.blue:hex(true),
    fg = col.blue:hex(true),
  },
  offset_separator = {
    fg = col.blue:hex(true),
    bg = col.blue:hex(true),
  },
}

local offsets = {
  {
    filetype = "NvimTree",
    text = "",
    padding = 1,
  },
  {
    filetype = "Outline",
    text = "",
    padding = 0,
  },
  {
    filetype = "SidebarNvim",
    text = "",
    padding = 0,
  },
  {
    filetype = "undotree",
    text = "",
    padding = 0,
  },
}

bufferline.setup({
  highlights = highlights,
  options = {
    offsets = offsets,
    mode = "buffers",
    numbers = "none",
    close_command = "bdelete! %d",
    right_mouse_command = "bdelete! %d",
    left_mouse_command = "buffer %d",
    middle_mouse_command = "bdelete! %d",
    indicator = {
      style = "none",
    },
    buffer_close_icon = "",
    modified_icon = "",
    close_icon = "X",
    left_trunc_marker = "",
    right_trunc_marker = "",
    max_name_length = 14,
    max_prefix_length = 15,
    truncate_names = true,
    tab_size = 15,
    diagnostics = false,
    show_buffer_icons = false,
    show_buffer_close_icons = true,
    show_buffer_default_icon = false,
    show_close_icon = true,
    show_tab_indicators = true,
    show_duplicate_prefix = true,
    persist_buffer_sort = true,
    separator_style = "none",
    enforce_regular_tabs = true,
    always_show_bufferline = true,
  },
})

---vim:filetype=lua
