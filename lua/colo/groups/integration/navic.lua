local M = {}

function M.prime(c)
  return {
    NavicIconsFile = { link = "Directory" },
    NavicIconsModule = { link = "@macro" },
    NavicIconsNamespecialace = { link = "@namespecialace" },
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
    NavicText = { foreground = c.white:darken(16) },
    NavicSeparator = { foreground = c.blue },
  }
end

return M
