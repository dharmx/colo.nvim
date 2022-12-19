---@module "colo.presets"
---@author dharmx
---@license GPL-3.0

local M = {}

local theming = require("colo.theming")
local colo_api = require("colo.api")

---A preset that enables italic comments
function M.enable_italic_comments()
  for _, hl_name in ipairs({ "@comment", "Comment" }) do
    local hl = vim.api.nvim_get_hl_by_name(hl_name, true)
    hl.italic = true
    vim.api.nvim_set_hl(0, hl_name, hl)
  end
end

---A preset that enables underdotted underlines instead of undercurls.
function M.enable_dotted_spell()
  for _, hl_name in ipairs({ "SpellBad", "SpellCap", "SpellRare", "SpellLocal" }) do
    local hl = vim.api.nvim_get_hl_by_name(hl_name, true)
    hl.underdotted = true
    vim.api.nvim_set_hl(0, hl_name, hl)
  end
end

---Add contrasts to side bars, floating windows and completion menus.
function M.enable_contrast()
  local contrast_modules = {
    "colo.groups.base.editor",
    "colo.groups.base.message",
    "colo.groups.base.pmenu",
    "colo.groups.integration.notify",
    "colo.groups.integration.nui",
    "colo.groups.integration.nvimtree",
    "colo.groups.integration.rnvimr",
    "colo.groups.integration.telescope",
    "colo.groups.integration.toggleterm",
    "colo.groups.integration.trouble",
    "colo.groups.integration.whichkey",
  }

  local contrast_groups = {
    "ErrorMsg",
    "ModeMsg",
    "MsgArea",
    "MoreMsg",
    "Question",
    "Directory",
    "WarningMsg",
    "Pmenu",
    "PmenuSel",
    "PmenuSbar",
    "PmenuThumb",
    "WildMenu",
    "NormalFloat",
    "FloatBorder",
    "NotifyINFOBody",
    "NotifyINFOBorder",
    "NotifyINFOIcon",
    "NotifyINFOTitle",
    "NotifyWARNBody",
    "NotifyWARNIcon",
    "NotifyWARNTitle",
    "NotifyWARNBorder",
    "NotifyDEBUGBody",
    "NotifyDEBUGIcon",
    "NotifyDEBUGTitle",
    "NotifyDEBUGBorder",
    "NotifyERRORBody",
    "NotifyERRORIcon",
    "NotifyERRORTitle",
    "NotifyERRORBorder",
    "NotifyTRACEBody",
    "NotifyTRACEIcon",
    "NotifyTRACETitle",
    "NotifyTRACEBorder",
    "NUIHeading",
    "NUIText",
    "NUILine",
    "NUINormal",
    "NUIPrompt",
    "NvimTreeVertSplit",
    "NvimTreeWinSeparator",
    "NvimTreeNormal",
    "NvimTreeNormalNC",
    "RnvimrNormal",
    "TelescopePreviewBorder",
    "TelescopeResultsBorder",
    "TelescopePromptBorder",
    "TelescopePreviewNormal",
    "TelescopeResultsNormal",
    "TelescopePromptNormal",
    "TelescopePromptPrefix",
    "TelescopePromptCounter",
    "ToggleTerm1NormalFloat",
    "ToggleTerm1FloatBorder",
    "TroubleNormal",
    "WhichKeyFloat",
    "WhichKeyBorder",
  }

  local col = colo_api.theme.current()
  local Color = require("colo.color")

  local modules = {}
  for _, value in ipairs(contrast_modules) do
    local fetched = require(value)
    for name, items in pairs(fetched) do
      if not items.background then
        items.background = col.black
      end
      if type(items.background) == "string" then
        items.background = Color:new({ hexcode = items.background })
      end
      if type(items.foreground) == "string" then
        items.foreground = Color:new({ hexcode = items.foreground })
      end
      if type(items.special) == "string" then
        items.special = Color:new({ hexcode = items.special })
      end
      modules[name] = items
    end
  end

  local overrides = colo_api.group.override({ resolve = true })
  for name, items in pairs(overrides) do
    if not items.background then
      items.background = col.black
    end
    if type(items.background) == "string" then
      items.background = Color:new({ hexcode = items.background })
    end
    if type(items.foreground) == "string" then
      items.foreground = Color:new({ hexcode = items.foreground })
    end
    if type(items.special) == "string" then
      items.special = Color:new({ hexcode = items.special })
    end
    overrides[name] = items
  end
  local extended = vim.tbl_extend("force", overrides, modules)

  local filtered = {}
  for _, item in ipairs(contrast_groups) do
    filtered[item] = extended[item]
  end

  for hl_name, hl_value in pairs(filtered) do
    hl_value.background = hl_value.background:darken(2)
    theming.set(hl_name, hl_value)
  end
end

return M

---vim:filetype=lua
