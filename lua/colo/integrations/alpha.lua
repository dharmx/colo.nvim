local alpha = require("alpha")
local util = require("colo.util")
local options = require("colo").config.integrations.alpha.options
  or {
    align = {
      heading = "center",
      buttons = "center",
      extras = "center",
      footing = "center",
    },
  }

local heading = {
  type = "text",
  val = options.heading or require("colo.logos").OCTOPI,
  opts = {
    position = options.align.heading or "center",
    hl = "AlphaHeading",
  },
}

local buttons = {
  type = "group",
  val = options.buttons or {
    util.generate_button(function()
      require("telescope.builtin").live_grep()
    end, {
      width = 25,
      cursor = 15,
      align = "center",
      spacing = 2,
      shortcut = {
        value = " T ",
        align = "right",
        hl = "AlphaKeyPrefix",
        lead = " ",
        trail = " ",
      },
      label = {
        value = "Grep",
        hl = "MoreMsg",
      },
      icon = {
        value = " ",
        hl = "MsgSeparator",
      },
    }),
    util.generate_button(function()
      require("telescope.builtin").find_files()
    end, {
      width = 25,
      cursor = 5,
      align = "center",
      spacing = 2,
      shortcut = {
        value = " T ",
        align = "right",
        hl = "AlphaKeyPrefix",
        lead = " ",
        trail = " ",
      },
      label = {
        value = "Files",
        hl = "MoreMsg",
      },
      icon = {
        value = " ",
        hl = "MsgSeparator",
      },
    }),
    util.generate_button(function()
      require("telescope.builtin").keymaps()
    end, {
      width = 25,
      cursor = 5,
      align = "center",
      spacing = 2,
      shortcut = {
        value = " T ",
        align = "right",
        hl = "AlphaKeyPrefix",
        lead = " ",
        trail = " ",
      },
      label = {
        value = "Keymaps",
        hl = "MoreMsg",
      },
      icon = {
        value = " ",
        hl = "MsgSeparator",
      },
    }),
  },
  opts = {
    position = options.align.buttons or "center",
    spacing = options.gaps or 1,
  },
}

local extras = {
  type = "text",
  val = options.extras or string.format(" Loaded %d plugins.", vim.tbl_count(packer_plugins)),
  opts = {
    position = options.align.extras or "center",
    hl = "AlphaLoaded",
  },
}

local footing = {
  type = "text",
  val = options.footing or os.getenv("USER") .. "@" .. vim.fn.hostname(),
  opts = {
    position = options.align.footing or "center",
    hl = "AlphaFooting",
  },
}

local config = {
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
  opts = { margin = options.margin or 15 },
}

alpha.setup(config)

-- vim:ft=lua
