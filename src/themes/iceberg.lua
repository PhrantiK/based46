-- credits to original theme https://rosepinetheme.com/
-- this is a modified version of it

-- black0
-- black1
-- black2
-- red0
-- red1
-- red2
-- orange0
-- orange1
-- orange2
-- yellow0
-- yellow1
-- yellow2
-- green0
-- green1
-- green2
-- blue0
-- blue1
-- blue2
-- cyan0
-- cyan1
-- cyan2
-- purple0
-- purple1
-- purple2

local M = {}

M.base_30 = {
  black = "#161821", -- Iceberg background
  darker_black = "#13151d",
  white = "#c6c8d1", -- Slightly muted white for better contrast on dark
  black2 = "#1e2132",
  one_bg = "#2d303b", -- Darker background variant
  one_bg2 = "#2f323e",
  one_bg3 = "#313440",
  grey = "#353945",
  grey_fg = "#424655",
  grey_fg2 = "#525768",
  light_grey = "#5d6377",
  red = "#e27878", -- Keeping as it fits well with cool themes
  baby_pink = "#de878f", -- Adjust to fit Iceberg's palette
  pink = "#de878f", -- Same as baby_pink for consistency
  line = "#88c0d0", -- More muted line color
  green = "#84a0c6", -- Cooler, blue-toned green
  vibrant_green = "#9daccc", -- Lighter, more vibrant version
  nord_blue = "#81a1c1", -- More aligned with Iceberg's blue tones
  blue = "#88c0d0", -- Soft, muted blue
  yellow = "#ebcb8b", -- Muted yellow to fit the theme
  sun = "#ebcb8b", -- Same as yellow for consistency
  purple = "#b48ead", -- Muted purple
  dark_purple = "#a3869a", -- Darker, softer purple
  teal = "#64878f", -- Muted teal to blend with Iceberg's palette
  orange = "#d08770", -- Soft, muted orange
  cyan = "#88c0d0", -- Soft, muted cyan, same as blue for harmony
  statusline_bg = "#1e2029", -- Slightly lighter for contrast
  lightbg = "#2e303e", -- For areas with lighter bg
  pmenu_bg = "#b48ead", -- Muted purple for popup menu bg
  folder_bg = "#5e81ac", -- Cool blue for folder icons
}

M.base_16 = {
  base00 = "#161821", -- Default Background
  base01 = "#1e2029", -- Lighter Background (Used for status bars, line number, etc.)
  base02 = "#252731", -- Selection Background
  base03 = "#353945", -- Comments, Invisibles (The stuff you don't see)
  base04 = "#424655", -- Dark Foreground (Used for status bars)
  base05 = "#c6c8d1", -- Default Foreground, Caret, Delimiters, Operators
  base06 = "#d8dee9", -- Light Foreground (Not often used)
  base07 = "#e5e9f0", -- Light Background (Not often used)
  base08 = "#e27878", -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
  base09 = "#d08770", -- Integers, Boolean, Constants, XML Attributes, Markup Link Url
  base0A = "#ebcb8b", -- Classes, Markup Bold, Search Text Background
  base0B = "#a3be8c", -- Strings, Inherited Class, Markup Code, Diff Inserted
  base0C = "#88c0d0", -- Support, Regular Expressions, Escape Characters, Markup Quotes
  base0D = "#81a1c1", -- Functions, Methods, Attribute IDs, Headings
  base0E = "#b48ead", -- Keywords, Storage, Selector, Markup Italic, Diff Changed
  base0F = "#bf616a", -- Deprecated, Opening/Closing Embedded Language Tags, e.g. `<?php ?>`
}

M = require("base46").override_theme(M, "rosepine")

M.type = "dark"

return M
