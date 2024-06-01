local M = {}

M.base_30 = {
  white = "#cbe3e7",
  darker_black = "#100e23",
  black = "#1a1c31", --  nvim bg
  black2 = "#1f2336",
  one_bg = "#2d2b40",
  one_bg2 = "#3e3859",
  one_bg3 = "#353b45",
  grey = "#403e4f",
  grey_fg = "#585273",
  grey_fg2 = "#403e4f",
  light_grey = "#545c7e",
  red          = "#f48fb1",
  baby_pink = "#f6a5c1",
  pink = "#f59ab9",
  line = "#2d2b40", -- for lines like vertsplit
  green = "#62d196",
  vibrant_green = "#a1efd3",
  nord_blue     = "#78A8ff",
  blue     = "#91DDFF",
  yellow       = "#ffe9aa",
  sun   = "#ffb378",
  purple = "#d4bfff",
  dark_purple = "#bb9af7",
  teal = "#17a98c",
  orange = "#f2b482",
  cyan = "#aaffe4",
  statusline_bg = "#1e1c31",
  lightbg = "#3e3859",
  pmenu_bg = "#7676ff",
  folder_bg = "#7676ff",
}

M.base_16 = {
  base00 = "#1e1c31",
  base01 = "#100e23",
  base02 = "#2d2b40",
  base03 = "#3e3859",
  base04 = "#403e4f",
  base05 = "#585273",
  base06 = "#cbe3e7",
  base07 = "#d5d6db",
  base08 = "#a1efd3",
  base09 = "#f2b482",
  base0A = "#0db9d7",
  base0B = "#9ece6a",
  base0C = "#abf8f7",
  base0D = "#63f2f1",
  base0E = "#d4bfff",
  base0F = "#f48fb1",
}

M.type = "dark"

M = require("base46").override_theme(M, "embark")

return M
