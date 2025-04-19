#!/usr/bin/env lua

package.loaded["base46"] = {
  override_theme = function(M, _) return M end,
}

package.loaded["nvconfig"] = {
  ui = {
    telescope   = { style = "default" },
    cmp         = { style = "default" },
    statusline  = { theme = "default" },
  },
  base46 = { transparency = false },
}

local function read_file(path)
  local f = assert(io.open(path, "r"))
  local s = f:read("*a")
  f:close()
  return s
end

local function write_file(path, text)
  local f = assert(io.open(path, "w"))
  f:write(text)
  f:close()
end

local function scandir(dir)
  local p = assert(io.popen(('ls -1 "%s"'):format(dir), "r"))
  local t = {}

  for file in p:lines() do
    if file:match("%.lua$") then
      t[#t + 1] = dir .. "/" .. file
    end
  end

  p:close()
  return t
end

local function mkdir_p(dir)
  os.execute(('mkdir -p "%s"'):format(dir))
end

local function table_keys_sorted(t)
  local k = {}
  for key in pairs(t) do k[#k + 1] = key end
  table.sort(k)
  return k
end

local function serialize_palette(pal)
  local out = {}
  for _, k in ipairs(table_keys_sorted(pal)) do
    out[#out + 1] = ('%s = "%s"'):format(k, pal[k])
  end
  return table.concat(out, "\n") .. "\n"
end

local rename = {
  black           = "bg0",
  darker_black    = "bg1",
  black2          = "bg2",
  one_bg          = "bg3",
  one_bg2         = "bg4",
  one_bg3         = "bg5",
  white           = "fg",
  grey            = "gray1",
  grey_fg         = "gray2",
  grey_fg2        = "gray3",
  light_grey      = "gray4",
  red             = "red",
  orange          = "orange",
  yellow          = "yellow",
  sun             = "yellow2",
  green           = "green",
  vibrant_green   = "green2",
  teal            = "teal",
  cyan            = "cyan",
  blue            = "blue",
  nord_blue       = "blue2",
  purple          = "purple",
  dark_purple     = "purple2",
  pink            = "pink",
  baby_pink       = "pink2",
  statusline_bg   = "ui_statusline_bg",
  lightbg         = "ui_light_bg",
  pmenu_bg        = "ui_pmenu_bg",
  folder_bg       = "ui_folder_icon",
  line            = "ui_visual_line",
}

local THEMES_DIR  = "src/base46/lua/base46/themes"
local CUSTOM_DIR  = "src/themes"
local DEST_TPL    = "templates"
local DEST_COL    = "colors"

mkdir_p(DEST_TPL)
mkdir_p(DEST_COL)

local template = read_file("template.toml")
local header, highlights = template:match("^(.-\n\n)(.+)$")

local function process_dir(dir)
  for _, file in ipairs(scandir(dir)) do
    local name = file:match("([^/]+)%.lua$"):gsub("-", "_")
    local M    = dofile(file)

    local pal = {}
    for k, v in pairs(M.base_30 or {}) do
      pal[rename[k] or k] = v
    end

    for k, v in pairs(M.base_16 or {}) do
      pal[k] = v
    end
    local bg = "dark"
    if M.type == "light" then bg = "light"
    else
      local txt = read_file(file)
      if txt:match("vim%.opt%.bg.-light") then bg = "light" end
    end

    local tpl_body = string.format(
      '%sname="%s"\nauthor="anon"\nbackground="%s"\n\n[palette]\n%s\n%s',
      header, name, bg, serialize_palette(pal), highlights
    )

    local tpl_path = ("%s/%s.toml"):format(DEST_TPL, name)
    write_file(tpl_path, tpl_body)

    print("Compiling " .. tpl_path)
    os.execute(
      ('cd "%s" && colorgen-nvim -s ../%s'):format(DEST_COL, tpl_path)
    )
  end
end

process_dir(THEMES_DIR)
process_dir(CUSTOM_DIR)
print("All themes compiled ✔︎")
