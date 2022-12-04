require("plenary.reload").reload_module("nvim-web-devicons")

local present, icons = pcall(require, "nvim-web-devicons")

if not present then
  return
end

local col = require("colo.util").active_theme_colors()

local config = {
  override = {
    c = { icon = "", color = col.blue, name = "C" },
    css = { icon = "", color = col.bright_blue, name = "CSS" },
    deb = { icon = "", color = col.red:darken(2), name = "Deb" },
    Dockerfile = { icon = "", color = col.blue, name = "Dockerfile" },
    html = { icon = "", color = col.red, name = "HTML" },
    jpeg = { icon = "", color = col.magenta, name = "JPEG" },
    jpg = { icon = "", color = col.magenta, name = "JPG" },
    js = { icon = "", color = col.yellow, name = "JS" },
    kt = { icon = "", color = col.red:brighten(2), name = "Kt" },
    lock = { icon = "", color = col.black:brighten(5), name = "Lock" },
    lua = { icon = "", color = col.blue, name = "Lua" },
    mp3 = { icon = "", color = col.bright_yellow, name = "MP3" },
    mp4 = { icon = "", color = col.yellow, name = "MP4" },
    out = { icon = "", color = col.green, name = "Out" },
    png = { icon = "", color = col.magenta, name = "PNG" },
    py = { icon = "", color = col.yellow, name = "Python" },
    toml = { icon = "", color = col.white:darken(25), name = "TOML" },
    ts = { icon = "ﯤ", color = col.bright_blue, name = "TS" },
    ttf = { icon = "", color = col.cyan, name = "TrueTypeFont" },
    rb = { icon = "", color = col.red:saturate(5), name = "Rb" },
    yuck = { icon = "", color = col.bright_yellow, name = "Yuck" },
    vim = { icon = "", color = col.green, name = "Vim" },
    rpm = { icon = "", color = col.red:increase_red(10):decrease_blue(5), name = "RPM" },
    vue = { icon = "﵂", color = col.green:increase_green(5), name = "Vue" },
    woff = { icon = "", color = col.cyan:brighten(2), name = "WebOpenFontFormat" },
    woff2 = { icon = "", color = col.cyan:brighten(2), name = "WebOpenFontFormat2" },
    xz = { icon = "", color = col.bright_green, name = "XZ" },
    zip = { icon = "", color = col.bright_green, name = "Zip" },
    ["robots.txt"] = { icon = "ﮧ", color = col.bright_cyan, name = "robots" },
  },
  default = true,
}

for filetype, info in pairs(config.override) do
  config.override[filetype].color = info.color:hex(true)
end

icons.set_default_icon("", col.white:darken(5):hex(true))
icons.setup(config)

-- vim:ft=lua
