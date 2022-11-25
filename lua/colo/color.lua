---@module "color"
---@author dharmx
---@license GPL-3.0

---@class Color
---@field name string
---@field red number?
---@field green number?
---@field blue number?
---@field hue number?
---@field saturation number?
---@field luminance number?
---@field hexcode string?
local Color = {}

---@module "colo.util"
local util = require("colo.util")

---@type table<string, string>
local named_colors = {
  aliceblue = "F0F8FF",
  antiquewhite = "FAEBD7",
  aqua = "0FF",
  aquamarine = "7FFFD4",
  azure = "F0FFFF",
  beige = "F5F5DC",
  bisque = "FFE4C4",
  black = "000",
  blanchedalmond = "FFEBCD",
  blue = "00F",
  blueviolet = "8A2BE2",
  brown = "A52A2A",
  burlywood = "DEB887",
  burntsienna = "EA7E5D",
  cadetblue = "5F9EA0",
  chartreuse = "7FFF00",
  chocolate = "D2691E",
  coral = "FF7F50",
  cornflowerblue = "6495ED",
  cornsilk = "FFF8DC",
  crimson = "DC143C",
  cyan = "0FF",
  darkblue = "00008B",
  darkcyan = "008B8B",
  darkgoldenrod = "B8860B",
  darkgray = "A9A9A9",
  darkgreen = "006400",
  darkgrey = "A9A9A9",
  darkkhaki = "BDB76B",
  darkmagenta = "8B008B",
  darkolivegreen = "556b2F",
  darkorange = "FF8C00",
  darkorchid = "9932CC",
  darkred = "8B0000",
  darksalmon = "E9967A",
  darkseagreen = "8FBC8F",
  darkslateblue = "483D8B",
  darkslategray = "2F4F4F",
  darkslategrey = "2F4F4F",
  darkturquoise = "00CED1",
  darkviolet = "9400d3",
  deeppink = "FF1493",
  deepskyblue = "00BFFF",
  dimgray = "696969",
  dimgrey = "696969",
  dodgerblue = "1E90FF",
  firebrick = "B22222",
  floralwhite = "FFFAF0",
  forestgreen = "228B22",
  fuchsia = "F0F",
  gainsboro = "DCDCDC",
  ghostwhite = "F8F8FF",
  gold = "FFD700",
  goldenrod = "DAA520",
  gray = "808080",
  green = "008000",
  greenyellow = "ADFF2F",
  grey = "808080",
  honeydew = "F0FFF0",
  hotpink = "FF69B4",
  indianred = "CD5C5C",
  indigo = "4B0082",
  ivory = "FFFFF0",
  khaki = "F0E68C",
  lavender = "E6E6FA",
  lavenderblush = "FFF0F5",
  lawngreen = "7CFC00",
  lemonchiffon = "FFFACD",
  lightblue = "ADD8E6",
  lightcoral = "F08080",
  lightcyan = "E0FFFF",
  lightgoldenrodyellow = "FAFAD2",
  lightgray = "D3D3D3",
  lightgreen = "90EE90",
  lightgrey = "D3D3D3",
  lightpink = "FFB6C1",
  lightskyblue = "87CEFA",
  lightslategray = "789",
  lightslategrey = "789",
  lightsteelblue = "B0C4DE",
  lightyellow = "FFFFE0",
  lime = "0F0",
  limegreen = "32CD32",
  linen = "FAF0E6",
  magenta = "F0F",
  maroon = "800000",
  mediumaquamarine = "66CDAA",
  mediumblue = "0000CD",
  mediumorchid = "BA55D3",
  mediumpurple = "9370DB",
  mediumseagreen = "3CB371",
  mediumslateblue = "7B68EE",
  mediumspringgreen = "00FA9A",
  mediumturquoise = "48D1CC",
  mediumvioletred = "C71585",
  midnightblue = "191970",
  mintcream = "F5FFFA",
  mistyrose = "FFE4E1",
  moccasin = "FFE4B5",
  navajowhite = "FFDEAD",
  navy = "000080",
  oldlace = "FDF5E6",
  olive = "808000",
  olivedrab = "6B8E23",
  orange = "FFA500",
  orangered = "FF4500",
  orchid = "DA70D6",
  palegoldenrod = "EEE8AA",
  palegreen = "98FB98",
  paleturquoise = "AFEEEE",
  palevioletred = "DB7093",
  papayawhip = "FFEFD5",
  peachpuff = "FFDAB9",
  peru = "CD853F",
  pink = "FFC0CB",
  plum = "DDA0DD",
  powderblue = "B0E0E6",
  purple = "800080",
  rebeccapurple = "663399",
  red = "F00",
  rosybrown = "BC8F8F",
  royalblue = "4169E1",
  saddlebrown = "8B4513",
  salmon = "FA8072",
  sandybrown = "F4A460",
  seagreen = "2E8B57",
  seashell = "FFF5EE",
  sienna = "A0522D",
  silver = "C0C0C0",
  skyblue = "87CEEB",
  slateblue = "6A5ACD",
  slategray = "708090",
  slategrey = "708090",
  snow = "FFFAFA",
  springgreen = "00FF7F",
  steelblue = "4682B4",
  tan = "D2B48C",
  teal = "008080",
  thistle = "D8BFD8",
  tomato = "FF6347",
  turquoise = "40E0D0",
  violet = "EE82EE",
  wheat = "F5DEB3",
  white = "FFF",
  whitesmoke = "F5F5F5",
  yellow = "FF0",
  yellowgreen = "9ACD32",
}

---Color class constructor
---@param col table field table
---@return table
function Color:new(col)
  col = col or { red = 0, green = 0, blue = 0 }
  if col.name then
    local color = named_colors[col.name]
    assert(color, col.name .. " is not a named color")
    col = Color.HEX2RGB(color)
  elseif col.hexcode then
    col = Color.HEX2RGB(col.hexcode)
  elseif col.hue and col.saturation and col.luminance then
    col = Color.HSL2RGB(col.hue, col.saturation, col.luminance)
  else
    col.red = math.floor(util.in_range(col.red, 255))
    col.green = math.floor(util.in_range(col.green, 255))
    col.blue = math.floor(util.in_range(col.blue, 255))
  end

  self.__index = self
  return setmetatable(col, self)
end

---See if the color exists in named colors
---@return string | nil
function Color:named()
  for name, color in pairs(named_colors) do
    if color == self:hex():upper() then
      return name
    end
  end
  return nil
end

---Convert RGB range [0-255] to [0-100]
---@return table
function Color:percentage()
  return {
    red = (self.red / 255) * 100 .. "%",
    green = (self.green / 255) * 100 .. "%",
    blue = (self.blue / 255) * 100 .. "%",
  }
end

---Convert RGB range [0-255] to [0-1]
---@return table
function Color:floating()
  local floating = {}
  for key, value in pairs(self:percentage()) do
    local float_done = tonumber(value:sub(1, #value - 1)) / 100
    floating[key] = float_done == 1 and "1.0" or string.format("%.2F", float_done)
  end
  return floating
end

---Convert RGB to hex color format
---@param prefix string? prepend # if true
---@return string
function Color:hex(prefix)
  prefix = prefix and "#" or ""
  local hex_tbl = vim.tbl_map(function(item)
    return item:len() == 1 and item:rep(2) or item
  end, {
    string.format("%x", self.red),
    string.format("%x", self.green),
    string.format("%x", self.blue),
  })

  if
    hex_tbl[1]:sub(1, 1) == hex_tbl[1]:sub(2, 2)
    and hex_tbl[2]:sub(1, 1) == hex_tbl[2]:sub(2, 2)
    and hex_tbl[3]:sub(1, 1) == hex_tbl[3]:sub(2, 2)
  then
    return prefix .. hex_tbl[1]:sub(1, 1) .. hex_tbl[2]:sub(1, 1) .. hex_tbl[3]:sub(1, 1)
  end
  return prefix .. table.concat(hex_tbl)
end

---Convert RGB color format to HSL
---@param unit boolean? { hue = "220deg", saturation = "100%", luminance = "25%" } if true and { hue = 0.66, saturation = 1.0, luminance = 0.8922 } if false
---@return table
function Color:HSL(unit)
  local float_string_col = self:floating()
  local red = tonumber(float_string_col.red)
  local green = tonumber(float_string_col.green)
  local blue = tonumber(float_string_col.blue)

  local max = math.max(red, green, blue)
  local min = math.min(red, green, blue)
  local hue = (max + min) / 2
  local luminance = hue
  local saturation = hue

  if max == min then
    hue = 0
    saturation = 0
  else
    local diff = max - min
    saturation = luminance > 0.5 and diff / (2 - max - min) or diff / (max + min)
    if max == red then
      hue = (green - blue) / diff + (green < blue and 6 or 0)
    elseif max == self.green then
      hue = (blue - red) / diff + 2
    elseif max == blue then
      hue = (red - green) / diff + 4
    end
    hue = hue / 6
  end
  return unit
      and {
        hue = math.ceil(hue * 360) .. "deg",
        saturation = math.ceil(saturation * 100) .. "%",
        luminance = math.ceil(luminance * 100) .. "%",
      }
    or { hue = hue, saturation = saturation, luminance = luminance }
end

function Color:achromatic() end

---Make any positive value stay within [0-1]
---@param value number number that needs to be clamped
---@return number
local function clamp(value)
  return math.min(1, math.max(0, value))
end

---Brighten a color
---@param amount number? [0-100] percentage value
---@return Color
function Color:brighten(amount)
  amount = amount == 0 and 0 or (amount or 10)
  return Color:new({
    red = math.max(0, math.min(255, self.red - math.floor(255 * -(amount / 100)))),
    green = math.max(0, math.min(255, self.green - math.floor(255 * -(amount / 100)))),
    blue = math.max(0, math.min(255, self.blue - math.floor(255 * -(amount / 100)))),
  })
end

---Lighten a color
---@param amount number? [0-100] percentage value
---@return Color
function Color:lighten(amount)
  amount = amount == 0 and 0 or (amount or 10)
  local HSL = self:HSL()
  HSL.luminance = HSL.luminance + amount / 100
  HSL.luminance = clamp(HSL.luminance)

  local RGB = Color.HSL2RGB(HSL.hue, HSL.saturation, HSL.luminance)
  return Color:new({
    red = RGB.red,
    green = RGB.green,
    blue = RGB.blue,
  })
end

---Darken a color
---@param amount number? [0-100] percentage value
---@return Color
function Color:darken(amount)
  amount = amount == 0 and 0 or (amount or 10)
  local HSL = self:HSL()
  HSL.luminance = HSL.luminance - amount / 100
  HSL.luminance = clamp(HSL.luminance)

  local RGB = Color.HSL2RGB(HSL.hue, HSL.saturation, HSL.luminance)
  return Color:new({
    red = RGB.red,
    green = RGB.green,
    blue = RGB.blue,
  })
end

---Saturate a color
---@param amount number? [0-100] percentage value
---@return Color
function Color:saturate(amount)
  amount = amount == 0 and 0 or (amount or 10)
  local HSL = self:HSL()
  HSL.saturate = HSL.saturate + amount / 100
  HSL.saturate = clamp(HSL.saturate)

  local RGB = Color.HSL2RGB(HSL.hue, HSL.saturation, HSL.luminance)
  return Color:new({
    red = RGB.red,
    green = RGB.green,
    blue = RGB.blue,
  })
end

---Desaturate a color
---@param amount number? [0-100] percentage value
---@return Color
function Color:desaturate(amount)
  amount = amount == 0 and 0 or (amount or 10)
  local HSL = self:HSL()
  HSL.saturate = HSL.saturate - amount / 100
  HSL.saturate = clamp(HSL.saturate)

  local RGB = Color.HSL2RGB(HSL.hue, HSL.saturation, HSL.luminance)
  return Color:new({
    red = RGB.red,
    green = RGB.green,
    blue = RGB.blue,
  })
end

---Spin hue angle of a color
---@param amount number? [0-100] percentage value
---@return Color
function Color:spin(amount)
  amount = amount == 0 and 0 or (amount or 10)
  local HSL = self:HSL()
  local hue = (HSL.hue + amount) % 360
  HSL.hue = hue < 0 and 360 + hue or hue

  local RGB = Color.HSL2RGB(HSL.hue, HSL.saturation, HSL.luminance)
  return Color:new({
    red = RGB.red,
    green = RGB.green,
    blue = RGB.blue,
  })
end

---Complement of a color
---@return Color
function Color:complement()
  local HSL = self:HSL()
  return Color:new({ hue = (HSL.hue + 180) % 360, saturation = HSL.saturation, luminance = HSL.luminance })
end

---Compute triad of the color
---@return table
function Color:triad()
  local HSL = self:HSL()
  local hue = HSL.hue
  return {
    self,
    Color:new({ hue = (hue + 120) % 360, saturation = HSL.saturation, luminance = HSL.luminance }),
    Color:new({ hue = (hue + 240) % 360, saturation = HSL.saturation, luminance = HSL.luminance }),
  }
end

---Compute tetrad of the color
---@return table
function Color:tetrad()
  local HSL = self:HSL()
  local hue = HSL.hue
  return {
    self,
    Color:new({ hue = (hue + 90) % 360, saturation = HSL.saturation, luminance = HSL.luminance }),
    Color:new({ hue = (hue + 180) % 360, saturation = HSL.saturation, luminance = HSL.luminance }),
    Color:new({ hue = (hue + 270) % 360, saturation = HSL.saturation, luminance = HSL.luminance }),
  }
end

---Compute the split-complement of the color
---@return table
function Color:split_complement()
  local HSL = self:HSL()
  local hue = HSL.hue
  return {
    self,
    Color:new({ hue = (hue + 72) % 360, saturation = HSL.saturation, luminance = HSL.luminance }),
    Color:new({ hue = (hue + 216) % 360, saturation = HSL.saturation, luminance = HSL.luminance }),
  }
end

---Get the brightness of the color
---@return number
function Color:brightness()
  return (self.red * 299 + self.green * 587 + self.blue * 114) / 1000
end

---Check if a color is light
---@return boolean
function Color:light()
  return not self:dark()
end

---Check if a color is dark
---@return boolean
function Color:dark()
  return self:brightness() < 128
end

---Get the luminance of a color
---@return number
function Color:lumin()
  local RsRGB, GsRGB, BsRGB, R, G, B
  RsRGB = self.red / 255
  GsRGB = self.green / 255
  BsRGB = self.blue / 255

  if RsRGB <= 0.03928 then
    R = RsRGB / 12.92
  else
    R = math.pow(((RsRGB + 0.055) / 1.055), 2.4)
  end
  if GsRGB <= 0.03928 then
    G = GsRGB / 12.92
  else
    G = math.pow(((GsRGB + 0.055) / 1.055), 2.4)
  end
  if BsRGB <= 0.03928 then
    B = BsRGB / 12.92
  else
    B = math.pow(((BsRGB + 0.055) / 1.055), 2.4)
  end
  return (0.2126 * R) + (0.7152 * G) + (0.0722 * B)
end

function Color:greyscale()
  self:desaturate(100)
end

---Compute color readability
---@param col Color that needs its readability computed
---@return number
function Color:readability(col)
  return (math.max(self:lumin(), col:lumin()) + 0.05) / (math.min(self:lumin(), col:lumin()) + 0.05)
end

---@private
---Validate WCAG2 Parms
---@param parms table | nil
---@return table
local function validateWCAG2Parms(parms)
  parms = parms or { level = "AA", size = "small" }
  local level = (parms.level or "AA"):upper()
  local size = (parms.size or "small"):lower()

  if level ~= "AA" and level ~= "AAA" then
    level = "AA"
  end

  if size ~= "small" and size ~= "large" then
    size = "small"
  end
  return { level = level, size = size }
end

---Check if a color is readable or not
---@param col Color color that needs to be checked
---@return boolean
function Color:readable(col)
  local readability = self:readability(col)
  local output = false
  local wcag2Parms = validateWCAG2Parms(wcag2)
  local level_size = wcag2Parms.level + wcag2Parms.size

  if level_size == "AAsmall" and level_size == "AAAlarge" then
    output = readability >= 4.5
  elseif level_size == "AAlarge" then
    output = readability >= 3
  elseif level_size == "AAAsmall" then
    output = readability >= 7
  end
  return output
end

---Mix two colors
---@param col Color color to be mixed with
---@param amount number?
---@return table
function Color:mix(col, amount)
  amount = amount == 0 and 0 or (amount or 50)
  local value = amount / 100
  return Color:new({
    red = ((col.red - self.red) * value) + self.red,
    green = ((col.green - self.green) * value) + self.green,
    blue = ((col.blue - self.blue) * value) + self.blue,
  })
end

---Get the RGB table from the Color instance
---@return table
function Color:RGB()
  return {
    red = self.red,
    green = self.green,
    blue = self.blue,
  }
end

---Convert a hex color to RGB
---@param hex string that should a hex color
---@return table
function Color.HEX2RGB(hex)
  hex = hex:sub(1, 1) == "#" and hex:sub(2) or hex
  if hex:len() == 3 then
    hex = hex:sub(1, 1):rep(2) .. hex:sub(2, 2):rep(2) .. hex:sub(3, 3):rep(2)
  end

  return {
    red = tonumber(hex:sub(1, 2), 16),
    green = tonumber(hex:sub(3, 4), 16),
    blue = tonumber(hex:sub(5, 6), 16),
  }
end

---Get a table of all named CSS colors
---@param prefix boolean? prefix with # if true
---@return table
function Color.named_colors(prefix)
  if prefix then
    local colors = {}
    for name, value in pairs(named_colors) do
      colors[name] = "#" .. value
    end
    return colors
  end
  return named_colors
end

---Generate a random color
---@return table
function Color.random()
  return Color:new({
    red = math.random(0, 255),
    green = math.random(0, 255),
    blue = math.random(0, 255),
  })
end

---Convert a HSL color to RGB
---@param hue number: [0, 1] which in actual [0, 360]
---@param saturation number: [0, 1] which in actual [0, 100]
---@param luminance number: [0, 1] which in actual [0, 100]
---@return table
function Color.HSL2RGB(hue, saturation, luminance)
  local RGB = {}

  function HUE2RGB(P, Q, T)
    if T < 0 then
      T = T + 1
    end
    if T > 1 then
      T = T - 1
    end
    if T < 1 / 6 then
      return P + (Q - P) * 6 * T
    end
    if T < 1 / 2 then
      return Q
    end
    if T < 2 / 3 then
      return P + (Q - P) * (2 / 3 - T) * 6
    end
    return P
  end

  if saturation == 0 then
    RGB.red = luminance
    RGB.green = luminance
    RGB.blue = luminance
  else
    local Q = luminance < 0.5 and luminance * (1 + saturation) or luminance + saturation - luminance * saturation
    local P = 2 * luminance - Q
    RGB.red = HUE2RGB(P, Q, hue + 1 / 3)
    RGB.green = HUE2RGB(P, Q, hue)
    RGB.blue = HUE2RGB(P, Q, hue - 1 / 3)
  end

  return { red = math.ceil(RGB.red * 255), green = math.ceil(RGB.green * 255), blue = math.ceil(RGB.blue * 255) }
end

---Pass red, green and blue values into vim.inspect and return
---@param self Color
---@param other Color
---@return string
Color.__tostring = function(self, other)
  return vim.inspect(self:RGB())
end

---Compare RGB values to see if they are equal
---@param self Color
---@param other Color
---@return boolean
Color.__eq = function(self, other)
  return self.red == other.red and self.green == other.green and self.blue == other.blue
end

---Add self RGB value and other RGB values and compare to see if they self is greater
---@param self Color
---@param other Color
---@return boolean
Color.__lt = function(self, other)
  return util.tbl_sum(self:RGB()) > util.tbl_sum(other:RGB())
end

---Add self RGB value and other RGB values and compare to see if they self is lesser
---@param self Color
---@param other Color
---@return boolean
Color.__gt = function(self, other)
  return util.tbl_sum(self:RGB()) < util.tbl_sum(other:RGB())
end

---Add self RGB value and other RGB values
---@param self Color
---@param other Color
---@return Color
Color.__add = function(self, other)
  return Color:new({ red = self.red + other.red, green = self.green + other.green, blue = self.blue + other.blue })
end

---Add self RGB value and other RGB values
---@param self Color
---@param other Color
---@return Color
Color.__sub = function(self, other)
  return Color:new({ red = self.red - other.red, green = self.green - other.green, blue = self.blue - other.blue })
end

return Color

-- vim:filetype=lua
