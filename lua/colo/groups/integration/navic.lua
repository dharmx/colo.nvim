---@module "colo.groups.integration.navic"
---@author dharmx
---@license GPL-3.0

local col = require("colo.api").theme.current()

return {
  NavicIconsFile = { link = "Directory" },
  NavicIconsModule = { link = "@macro" },
  NavicIconsNamespace = { link = "@namespace" },
  NavicIconsPackage = { link = "@include" },
  NavicIconsClass = { link = "@storageclass" },
  NavicIconsMethod = { link = "@method" },
  NavicIconsProperty = { link = "@property" },
  NavicIconsField = { link = "@field" },
  NavicIconsConstructor = { link = "@constructor" },
  NavicIconsEnum = { link = "@tag" },
  NavicIconsInterface = { link = "@function.macro" },
  NavicIconsFunction = { link = "@function" },
  NavicIconsVariable = { link = "@text.title" },
  NavicIconsConstant = { link = "@constant" },
  NavicIconsString = { link = "@string" },
  NavicIconsNumber = { link = "@number" },
  NavicIconsBoolean = { link = "@boolean" },
  NavicIconsArray = { link = "@string.special" },
  NavicIconsObject = { link = "@string.regex" },
  NavicIconsKey = { link = "@label" },
  NavicIconsNull = { link = "@constant.builtin" },
  NavicIconsEnumMember = { link = "@preproc" },
  NavicIconsStruct = { link = "@structure" },
  NavicIconsEvent = { link = "@text.literal" },
  NavicIconsOperator = { link = "@keyword.operator" },
  NavicIconsTypeParameter = { link = "@parameter" },
  NavicText = { foreground = col.white:darken(16) },
  NavicSeparator = { foreground = col.blue },
}

---vim:filetype=lua
