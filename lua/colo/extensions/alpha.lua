local alpha = require("alpha")
local options = require("colo").config.extensions.alpha.options
  or {
    align = {
      heading = "center",
      buttons = "center",
      extras = "center",
      footing = "center",
    },
  }

---Helper utility for adding a dashboard item
---
---Example: Add a button to open telescope live_grep builtin
---<pre>
---generate_button(function()
---require("telescope.builtin").live_grep()
---end, {
---  width = 25,
---  cursor = 15,
---  align = "center",
---  spacing = 2,
---  shortcut = {
---    value = " T ",
---    align = "right",
---    hl = "AlphaKeyPrefix",
---    lead = " ",
---    trail = " ",
---  },
---  label = {
---    value = "Grep",
---    hl = "MoreMsg",
---  },
---  icon = {
---    value = " ",
---    hl = "MsgSeparator",
---  },
---})
---</pre>
---
---@param callback function callback to run when the button is pressed
---@param metadata table configures button function, layout and contents
---                      + icon.value
---                      + icon.hl
---                      + label.value
---                      + label.hl
---                      + shortcut.value
---                      + shortcut.hl
---                      + shortcut.align
---                      + shortcut.before
---                      + shortcut.after
---                      + cursor
---                      + width
---                      + align
---                      + spacing
---@return table
local function generate_button(callback, metadata)
  local setting = {
    type = "button",
    on_press = callback,
    val = ("%s%s%s"):format(metadata.icon.value, (" "):rep(metadata.spacing or 2), metadata.label.value),
    opts = {
      position = metadata.align or "center", ---left | right | center
      shortcut = metadata.shortcut.value,
      cursor = metadata.cursor or 5,
      width = metadata.width or 25,
      align_shortcut = metadata.shortcut.align or "right", ---right | left
      hl_shortcut = metadata.shortcut.hl,
      hl = {},
    },
  }

  if metadata.shortcut.before then
    setting.opts.shortcut = metadata.shortcut.before .. setting.opts.shortcut
  else
    setting.opts.shortcut = " " .. setting.opts.shortcut
  end

  if metadata.shortcut.after then
    setting.opts.shortcut = setting.opts.shortcut .. metadata.shortcut.after
  else
    setting.opts.shortcut = setting.opts.shortcut .. " "
  end

  local icon_length = metadata.icon.value:len()
  local label_length = metadata.label.value:len()
  setting.opts.hl = {
    { metadata.icon.hl, 1, icon_length },
    { metadata.label.hl, icon_length + metadata.spacing, icon_length + (metadata.spacing or 2) + label_length },
  }

  return setting
end

local heading = {
  type = "text",
  val = options.heading or require("colo.logos").OCTOPI,
  opts = {
    position = "center",
    hl = "AlphaHeading",
  },
}

local buttons = {
  type = "group",
  val = options.buttons or {
    generate_button(function()
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
    generate_button(function()
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
    generate_button(function()
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
    position = "center",
    spacing = options.gaps or 1,
  },
}

local extras = {
  type = "text",
  val = options.extras or string.format(" Loaded %d plugins.", vim.tbl_count(packer_plugins)),
  opts = {
    position = "center",
    hl = "AlphaLoaded",
  },
}

local footing = {
  type = "text",
  val = options.footing or os.getenv("USER") .. "@" .. vim.fn.hostname(),
  opts = {
    position = "center",
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
