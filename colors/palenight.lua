vim.cmd('hi clear')

vim.o.background = 'dark'
if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end

vim.o.termguicolors = true
vim.g.colors_name = 'palenight'

local c = {
  white = "#ffffff",
  darker_black = "#232738",
  black = "#292d3e",
  black2 = "#2f3344",
  one_bg = "#333748",
  one_bg2 = "#3c4051",
  one_bg3 = "#444859",
  grey = "#515566",
  grey_fg = "#5b5f70",
  grey_fg2 = "#65697a",
  light_grey = "#6d7182",
  red = "#f07178",
  baby_pink = "#606475",
  pink = "#ff5370",
  line = "#3f4354",
  green = "#c3e88d",
  vibrant_green = "#96e88d",
  nord_blue = "#8fb7ff",
  blue = "#82aaff",
  yellow = "#ffcb6b",
  sun = "#ffd373",
  purple = "#c792ea",
  dark_purple = "#b383d2",
  teal = "#89ffe6",
  orange = "#ffa282",
  cyan = "#89ddff",
  statusline_bg = "#2d3142",
  lightbg = "#3c4051",
  pmenu_bg = "#82aaff",
  folder_bg = "#82aaff",
  base00 = "#292d3e",
  base01 = "#444267",
  base02 = "#32374d",
  base03 = "#676e95",
  base04 = "#8796b0",
  base05 = "#d3d3d3",
  base06 = "#efefef",
  base07 = "#ffffff",
  base08 = "#f07178",
  base09 = "#ffa282",
  base0A = "#ffcb6b",
  base0B = "#c3e88d",
  base0C = "#89ddff",
  base0D = "#82aaff",
  base0E = "#c792ea",
  base0F = "#ff5370",
}

local hl = vim.api.nvim_set_hl

-- highlights
hl(0, "Normal", { fg = c.base05, bg = c.base00, })
hl(0, "NormalNC", { fg = c.base05, bg = c.base00, })
hl(0, "NormalSB", { fg = c.base05, bg = c.darker_black, })
hl(0, "Cursor", { fg = c.base00, bg = c.base05, })
hl(0, "lCursor", { fg = c.base00, bg = c.base05, })
hl(0, "CursorIM", { fg = c.base00, bg = c.base05, })
hl(0, "CursorLine", { fg = 'NONE', bg = c.black2, })
hl(0, "CursorColumn", { fg = 'NONE', bg = c.black2, })
hl(0, "TermCursor", { fg = c.base00, bg = c.base05, })
hl(0, "TermCursorNC", { fg = c.base00, bg = c.base05, })
hl(0, "LineNr", { fg = c.one_bg3, bg = 'NONE', })
hl(0, "CursorLineNr", { fg = c.base04, bg = 'NONE', })
hl(0, "DiffText", { fg = 'NONE', bg = c.diff_text, })
hl(0, "DiffAdd", { fg = 'NONE', bg = c.diff_add, })
hl(0, "DiffChange", { fg = 'NONE', bg = c.diff_change, })
hl(0, "DiffDelete", { fg = 'NONE', bg = c.diff_delete, })
hl(0, "Pmenu", { fg = 'NONE', bg = c.one_bg, })
hl(0, "PmenuSel", { fg = c.black, bg = c.pmenu_bg, })
hl(0, "PmenuSbar", { fg = 'NONE', bg = c.one_bg, })
hl(0, "PmenuThumb", { fg = 'NONE', bg = c.grey, })
hl(0, "WildMenu", { fg = 'NONE', bg = c.base08, bold=true, })
hl(0, "MsgArea", { fg = c.base05, bg = 'NONE', })
hl(0, "ModeMsg", { fg = c.base05, bg = 'NONE', bold=true, })
hl(0, "MsgSeparator", { fg = c.base05, bg = c.base00, })
hl(0, "MoreMsg", { fg = c.blue, bg = 'NONE', })
hl(0, "WarningMsg", { fg = c.yellow, bg = 'NONE', })
hl(0, "ErrorMsg", { fg = c.base0F, bg = c.base00, bold=true, })
hl(0, "MatchWord", { fg = c.white, bg = c.grey, })
hl(0, "MatchParen", { link = 'MatchWord' })
hl(0, "TabLine", { fg = c.one_bg3, bg = c.one_bg, })
hl(0, "TabLineSel", { fg = c.black, bg = c.blue, })
hl(0, "TabLineFill", { fg = 'NONE', bg = c.black, })
hl(0, "Search", { fg = c.base01, bg = c.base0A, })
hl(0, "IncSearch", { fg = c.base01, bg = c.base09, })
hl(0, "CurSearch", { link = 'IncSearch' })
hl(0, "Visual", { fg = 'NONE', bg = c.base02, })
hl(0, "VisualNOS", { fg = c.base08, bg = 'NONE', })
hl(0, "Folded", { fg = c.base03, bg = c.base01, })
hl(0, "FoldColumn", { fg = c.base0C, bg = c.base01, })
hl(0, "ColorColumn", { fg = 'NONE', bg = c.black, })
hl(0, "SignColumn", { fg = c.one_bg3, bg = c.base00, })
hl(0, "SignColumnSB", { fg = c.one_bg3, bg = c.darker_black, })
hl(0, "VertSplit", { fg = c.line, bg = 'NONE', })
hl(0, "WinSeparator", { fg = c.line, bg = 'NONE', bold=true, })
hl(0, "NormalFloat", { fg = c.base05, bg = c.darker_black, })
hl(0, "FloatBorder", { fg = c.blue, bg = c.darker_black, })
hl(0, "SpellBad", { fg = 'NONE', bg = 'NONE', sp = c.base08, undercurl=true, })
hl(0, "SpellCap", { fg = 'NONE', bg = 'NONE', sp = c.base0D, undercurl=true, })
hl(0, "SpellLocal", { fg = 'NONE', bg = 'NONE', sp = c.base0C, undercurl=true, })
hl(0, "SpellRare", { fg = 'NONE', bg = 'NONE', sp = c.base0E, undercurl=true, })
hl(0, "QuickFixLine", { fg = 'NONE', bg = c.base01, sp = c.b, })
hl(0, "Directory", { fg = c.base0D, bg = 'NONE', })
hl(0, "Question", { fg = c.blue, bg = 'NONE', })
hl(0, "Conceal", { fg = c.base04, bg = 'NONE', })
hl(0, "SpecialKey", { fg = c.light_grey, bg = 'NONE', bold=true, })
hl(0, "Whitespace", { fg = c.one_bg3, bg = 'NONE', })
hl(0, "Substitute", { fg = c.black, bg = c.red, })
hl(0, "EndOfBuffer", { fg = c.base00, bg = 'NONE', })
hl(0, "NonText", { fg = c.light_grey, bg = 'NONE', })

-- Code
hl(0, "Bold", { fg = 'NONE', bg = 'NONE', bold=true, })
hl(0, "Boolean", { fg = c.base09, bg = 'NONE', })
hl(0, "Character", { fg = c.base08, bg = 'NONE', })
hl(0, "Comment", { fg = c.grey_fg, bg = 'NONE', italic=true, })
hl(0, "Conditional", { fg = c.base0E, bg = 'NONE', })
hl(0, "Constant", { fg = c.base08, bg = 'NONE', })
hl(0, "Debug", { fg = c.base08, bg = 'NONE', })
hl(0, "Define", { fg = c.base0E, bg = 'NONE', })
hl(0, "Delimiter", { fg = c.base04, bg = 'NONE', })
hl(0, "Error", { fg = c.base0F, bg = 'NONE', bold=true, })
hl(0, "Exception", { fg = c.base0E, bg = 'NONE', })
hl(0, "Float", { fg = c.base09, bg = 'NONE', })
hl(0, "Function", { fg = c.base0D, bg = 'NONE', })
hl(0, "Identifier", { fg = c.base08, bg = 'NONE', })
hl(0, "Include", { fg = c.base0D, bg = 'NONE', })
hl(0, "Italic", { fg = 'NONE', bg = 'NONE', italic=true, })
hl(0, "Keyword", { fg = c.base0E, bg = 'NONE', })
hl(0, "Label", { fg = c.base0A, bg = 'NONE', })
hl(0, "Macro", { fg = c.base08, bg = 'NONE', })
hl(0, "Number", { fg = c.base09, bg = 'NONE', })
hl(0, "Operator", { fg = c.base05, bg = 'NONE', })
hl(0, "PreCondit", { fg = c.base0E, bg = 'NONE', })
hl(0, "PreProc", { fg = c.base0A, bg = 'NONE', })
hl(0, "Repeat", { fg = c.base0A, bg = 'NONE', })
hl(0, "Special", { fg = c.base0C, bg = 'NONE', })
hl(0, "SpecialChar", { fg = c.base0F, bg = 'NONE', })
hl(0, "SpecialComment", { fg = c.base0D, bg = 'NONE', })
hl(0, "Statement", { fg = c.base08, bg = 'NONE', })
hl(0, "StorageClass", { fg = c.base0A, bg = 'NONE', })
hl(0, "String", { fg = c.base0B, bg = 'NONE', })
hl(0, "Structure", { fg = c.base0E, bg = 'NONE', })
hl(0, "Tag", { fg = c.base0A, bg = 'NONE', })
hl(0, "Title", { fg = c.blue, bg = 'NONE', bold=true, })
hl(0, "Todo", { fg = c.base0A, bg = c.base01, bold=true, })
hl(0, "Type", { fg = c.base0A, bg = 'NONE', })
hl(0, "Typedef", { fg = c.base0A, bg = 'NONE', })
hl(0, "Underlined", { fg = 'NONE', bg = 'NONE', underline=true, })
hl(0, "Variable", { fg = c.base05, bg = 'NONE', })

-- Treesitter
hl(0, "@comment", { link = 'Comment' })
hl(0, "@none", { fg = 'NONE', bg = 'NONE', })
hl(0, "@preproc", { link = 'PreProc' })
hl(0, "@define", { link = 'Define' })
hl(0, "@operator", { link = 'Operator' })
hl(0, "@punctuation.delimeter", { link = 'Delimiter' })
hl(0, "@punctuation.bracket", { fg = c.base05, bg = 'NONE', })
hl(0, "@punctuation.special", { link = 'Delimiter' })
hl(0, "@string", { link = 'String' })
hl(0, "@string.regex", { link = 'String' })
hl(0, "@string.escape", { link = 'SpecialChar' })
hl(0, "@string.special", { link = 'SpecialChar' })
hl(0, "@character", { link = 'Character' })
hl(0, "@character.special", { link = 'SpecialChar' })
hl(0, "@boolean", { link = 'Boolean' })
hl(0, "@number", { link = 'Number' })
hl(0, "@float", { link = 'Float' })
hl(0, "@function", { link = 'Function' })
hl(0, "@function.builtin", { link = 'Special' })
hl(0, "@function.call", { link = 'Function' })
hl(0, "@function.macro", { link = 'Macro' })
hl(0, "@method", { link = 'Function' })
hl(0, "@method.call", { link = 'Function' })
hl(0, "@constructor", { link = 'Special' })
hl(0, "@parameter", { fg = c.yellow, bg = 'NONE', })
hl(0, "@keyword", { link = 'Keyword' })
hl(0, "@keyword.function", { link = 'Keyword' })
hl(0, "@keyword.operator", { link = 'Keyword' })
hl(0, "@keyword.return", { link = 'Keyword' })
hl(0, "@conditional", { link = 'Conditional' })
hl(0, "@repeat", { link = 'Repeat' })
hl(0, "@debug", { link = 'Debug' })
hl(0, "@label", { link = 'Label' })
hl(0, "@include", { link = 'Include' })
hl(0, "@exception", { link = 'Exception' })
hl(0, "@type", { link = 'Type' })
hl(0, "@type.builtin", { link = 'Type' })
hl(0, "@type.definition", { link = 'Typedef' })
hl(0, "@type.qualifier", { link = 'Type' })
hl(0, "@storageclass", { link = 'StorageClass' })
hl(0, "@attribute", { link = 'PreProc' })
hl(0, "@field", { fg = c.vibrant_green, bg = 'NONE', })
hl(0, "@property", { fg = c.vibrant_green, bg = 'NONE', })
hl(0, "@variable", { link = 'Variable' })
hl(0, "@variable.builtin", { fg = c.red, bg = 'NONE', })
hl(0, "@constant", { link = 'Constant' })
hl(0, "@constant.builtin", { link = 'Special' })
hl(0, "@constant.macro", { link = 'Define' })
hl(0, "@namespace", { link = 'Include' })
hl(0, "@symbol", { link = 'Identifier' })
hl(0, "@text", { link = 'None' })
hl(0, "@text.strong", { link = 'Bold' })
hl(0, "@text.emphasis", { link = 'Italic' })
hl(0, "@text.underline", { link = 'Underlined' })
hl(0, "@text.strike", { fg = 'NONE', bg = 'NONE', strikethrough=true, })
hl(0, "@text.title", { link = 'Title' })
hl(0, "@text.literal", { link = 'String' })
hl(0, "@text.uri", { link = 'Underlined' })
hl(0, "@text.math", { link = 'Special' })
hl(0, "@text.environment", { link = 'Macro' })
hl(0, "@text.environment.name", { link = 'Type' })
hl(0, "@text.reference", { link = 'Constant' })
hl(0, "@text.todo", { link = 'Todo' })
hl(0, "@text.note", { link = 'SpecialComment' })
hl(0, "@text.yellow", { link = 'Todo' })
hl(0, "@text.danger", { link = 'WarningMsg' })
hl(0, "@tag", { link = 'Tag' })
hl(0, "@tag.attribute", { link = 'Identifier' })
hl(0, "@tag.delimiter", { fg = c.base04, bg = 'NONE', })
hl(0, "@lsp.type.grey_fg", { link = 'Comment' })
hl(0, "@lsp.type.interface", { link = 'Identifier' })
hl(0, "@lsp.type.keyword", { link = 'Keyword' })
hl(0, "@lsp.type.namespace", { link = '@namespace' })
hl(0, "@lsp.type.parameter", { link = '@parameter' })
hl(0, "@lsp.type.property", { link = '@property' })
hl(0, "@lsp.type.variable", { link = '@variable' })
hl(0, "@lsp.typemod.method.defaultLibrary", { link = '@function.builtin' })
hl(0, "@lsp.typemod.function.defaultLibrary", { link = '@function.builtin' })
hl(0, "@lsp.typemod.variable.defaultLibrary", { link = '@variable.builtin' })
hl(0, "@lsp.typemod.operator.injected", { link = '@operator' })
hl(0, "@lsp.typemod.string.injected", { link = '@string' })
hl(0, "@lsp.typemod.variable.injected", { link = '@variable' })

-- LSP
hl(0, "DiagnosticHint", { fg = c.purple, bg = 'NONE', })
hl(0, "DiagnosticInfo", { fg = c.green, bg = 'NONE', })
hl(0, "DiagnosticWarn", { fg = c.yellow, bg = 'NONE', })
hl(0, "DiagnosticError", { fg = c.red, bg = 'NONE', })
hl(0, "DiagnosticOther", { fg = c.purple, bg = 'NONE', })
hl(0, "DiagnosticSignHint", { link = 'DiagnosticHint' })
hl(0, "DiagnosticSignInfo", { link = 'DiagnosticInfo' })
hl(0, "DiagnosticSignWarn", { link = 'DiagnosticWarn' })
hl(0, "DiagnosticSignError", { link = 'DiagnosticError' })
hl(0, "DiagnosticSignOther", { link = 'DiagnosticOther' })
hl(0, "DiagnosticSignWarning", { link = 'DiagnosticWarn' })
hl(0, "DiagnosticFloatingHint", { link = 'DiagnosticHint' })
hl(0, "DiagnosticFloatingInfo", { link = 'DiagnosticInfo' })
hl(0, "DiagnosticFloatingWarn", { link = 'DiagnosticWarn' })
hl(0, "DiagnosticFloatingError", { link = 'DiagnosticError' })
hl(0, "DiagnosticUnderlineHint", { fg = 'NONE', bg = 'NONE', sp = c.teal, undercurl=true, })
hl(0, "DiagnosticUnderlineInfo", { fg = 'NONE', bg = 'NONE', sp = c.base0A, undercurl=true, })
hl(0, "DiagnosticUnderlineWarn", { fg = 'NONE', bg = 'NONE', sp = c.yellow, undercurl=true, })
hl(0, "DiagnosticUnderlineError", { fg = 'NONE', bg = 'NONE', sp = c.base08, undercurl=true, })
hl(0, "DiagnosticSignInformation", { link = 'DiagnosticInfo' })
hl(0, "DiagnosticVirtualTextHint", { fg = c.teal, bg = 'NONE', })
hl(0, "DiagnosticVirtualTextInfo", { fg = c.sun, bg = 'NONE', })
hl(0, "DiagnosticVirtualTextWarn", { fg = c.base09, bg = 'NONE', })
hl(0, "DiagnosticVirtualTextError", { fg = c.base08, bg = 'NONE', })
hl(0, "LspDiagnosticsError", { link = 'DiagnosticError' })
hl(0, "LspDiagnosticsWarning", { link = 'DiagnosticWarn' })
hl(0, "LspDiagnosticsInfo", { link = 'DiagnosticInfo' })
hl(0, "LspDiagnosticsInformation", { link = 'LspDiagnosticsInfo' })
hl(0, "LspDiagnosticsHint", { link = 'DiagnosticHint' })
hl(0, "LspDiagnosticsDefaultError", { link = 'LspDiagnosticsError' })
hl(0, "LspDiagnosticsDefaultWarning", { link = 'LspDiagnosticsWarning' })
hl(0, "LspDiagnosticsDefaultInformation", { link = 'LspDiagnosticsInfo' })
hl(0, "LspDiagnosticsDefaultInfo", { link = 'LspDiagnosticsInfo' })
hl(0, "LspDiagnosticsDefaultHint", { link = 'LspDiagnosticsHint' })
hl(0, "LspDiagnosticsVirtualTextError", { link = 'DiagnosticVirtualTextError' })
hl(0, "LspDiagnosticsVirtualTextWarning", { link = 'DiagnosticVirtualTextWarn' })
hl(0, "LspDiagnosticsVirtualTextInformation", { link = 'DiagnosticVirtualTextInfo' })
hl(0, "LspDiagnosticsVirtualTextInfo", { link = 'DiagnosticVirtualTextInfo' })
hl(0, "LspDiagnosticsVirtualTextHint", { link = 'DiagnosticVirtualTextHint' })
hl(0, "LspDiagnosticsFloatingError", { link = 'LspDiagnosticsError' })
hl(0, "LspDiagnosticsFloatingWarning", { link = 'LspDiagnosticsWarning' })
hl(0, "LspDiagnosticsFloatingInformation", { link = 'LspDiagnosticsInfo' })
hl(0, "LspDiagnosticsFloatingInfo", { link = 'LspDiagnosticsInfo' })
hl(0, "LspDiagnosticsFloatingHint", { link = 'LspDiagnosticsHint' })
hl(0, "LspDiagnosticsSignError", { link = 'LspDiagnosticsError' })
hl(0, "LspDiagnosticsSignWarning", { link = 'LspDiagnosticsWarning' })
hl(0, "LspDiagnosticsSignInformation", { link = 'LspDiagnosticsInfo' })
hl(0, "LspDiagnosticsSignInfo", { link = 'LspDiagnosticsInfo' })
hl(0, "LspDiagnosticsSignHint", { link = 'LspDiagnosticsHint' })
hl(0, "LspDiagnosticsUnderlineError", { link = 'DiagnosticUnderlineError' })
hl(0, "LspDiagnosticsUnderlineWarning", { link = 'DiagnosticUnderlineWarn' })
hl(0, "LspDiagnosticsUnderlineInformation", { link = 'DiagnosticUnderlineInfo' })
hl(0, "LspDiagnosticsUnderlineInfo", { link = 'DiagnosticUnderlineInfo' })
hl(0, "LspDiagnosticsUnderlineHint", { link = 'DiagnosticUnderlineHint' })
hl(0, "LspReferenceRead", { fg = 'NONE', bg = c.one_bg3, })
hl(0, "LspReferenceText", { fg = 'NONE', bg = c.one_bg3, })
hl(0, "LspReferenceWrite", { fg = 'NONE', bg = c.one_bg3, })
hl(0, "LspCodeLens", { fg = c.grey_fg, bg = 'NONE', italic=true, })
hl(0, "LspCodeLensSeparator", { fg = c.grey_fg, bg = 'NONE', italic=true, })

-- Cmp
hl(0, "CmpBorder", { fg = c.one_bg2, bg = 'NONE', })
hl(0, "CmpItemAbbr", { fg = c.white, bg = 'NONE', })
hl(0, "CmpItemAbbrMatch", { fg = c.blue, bg = c._, bold=true, })
hl(0, "CmpDoc", { fg = c.darker_black, bg = 'NONE', })
hl(0, "CmpDocBorder", { fg = c.darker_black, bg = c.darker_black, })
hl(0, "CmpPmenu", { fg = c.black, bg = 'NONE', })
hl(0, "CmpSel", { fg = 'NONE', bg = c.pmenu_bg, bold=true, })
hl(0, "CmpItemKindConstant", { fg = c.base09, bg = 'NONE', })
hl(0, "CmpItemKindFunction", { fg = c.base0D, bg = 'NONE', })
hl(0, "CmpItemKindIdentifier", { fg = c.base08, bg = 'NONE', })
hl(0, "CmpItemKindField", { fg = c.base08, bg = 'NONE', })
hl(0, "CmpItemKindVariable", { fg = c.base0E, bg = 'NONE', })
hl(0, "CmpItemKindSnippet", { fg = c.red, bg = 'NONE', })
hl(0, "CmpItemKindText", { fg = c.base0B, bg = 'NONE', })
hl(0, "CmpItemKindStructure", { fg = c.base0E, bg = 'NONE', })
hl(0, "CmpItemKindType", { fg = c.base0A, bg = 'NONE', })
hl(0, "CmpItemKindKeyword", { fg = c.base07, bg = 'NONE', })
hl(0, "CmpItemKindMethod", { fg = c.base0D, bg = 'NONE', })
hl(0, "CmpItemKindConstructor", { fg = c.blue, bg = 'NONE', })
hl(0, "CmpItemKindFolder", { fg = c.base07, bg = 'NONE', })
hl(0, "CmpItemKindModule", { fg = c.base0A, bg = 'NONE', })
hl(0, "CmpItemKindProperty", { fg = c.base08, bg = 'NONE', })
hl(0, "CmpItemKindEnum", { fg = c.blue, bg = 'NONE', })
hl(0, "CmpItemKindUnit", { fg = c.base0E, bg = 'NONE', })
hl(0, "CmpItemKindClass", { fg = c.teal, bg = 'NONE', })
hl(0, "CmpItemKindFile", { fg = c.base07, bg = 'NONE', })
hl(0, "CmpItemKindInterface", { fg = c.green, bg = 'NONE', })
hl(0, "CmpItemKindColor", { fg = c.white, bg = 'NONE', })
hl(0, "CmpItemKindReference", { fg = c.base05, bg = 'NONE', })
hl(0, "CmpItemKindEnumMember", { fg = c.purple, bg = 'NONE', })
hl(0, "CmpItemKindStruct", { fg = c.base0E, bg = 'NONE', })
hl(0, "CmpItemKindValue", { fg = c.cyan, bg = 'NONE', })
hl(0, "CmpItemKindEvent", { fg = c.yellow, bg = 'NONE', })
hl(0, "CmpItemKindOperator", { fg = c.base05, bg = 'NONE', })
hl(0, "CmpItemKindTypeParameter", { fg = c.base08, bg = 'NONE', })
hl(0, "CmpItemKindCopilot", { fg = c.green, bg = 'NONE', })
hl(0, "CmpItemKindCodeium", { fg = c.vibrant_green, bg = 'NONE', })
hl(0, "CmpItemKindTabNine", { fg = c.baby_pink, bg = 'NONE', })

-- Lazy
hl(0, "LazyH1", { fg = c.black, bg = c.green, })
hl(0, "LazyH2", { fg = c.red, bg = 'NONE', sp = c.u, bold=true, })
hl(0, "LazyReasonPlugin", { fg = c.red, bg = 'NONE', })
hl(0, "LazyValue", { fg = c.teal, bg = 'NONE', })
hl(0, "LazyDir", { fg = c.base05, bg = 'NONE', })
hl(0, "LazyUrl", { fg = c.base05, bg = 'NONE', })
hl(0, "LazyCommit", { fg = c.green, bg = 'NONE', })
hl(0, "LazyNoCond", { fg = c.red, bg = 'NONE', })
hl(0, "LazySpecial", { fg = c.blue, bg = 'NONE', })
hl(0, "LazyReasonFt", { fg = c.purple, bg = 'NONE', })
hl(0, "LazyOperator", { fg = c.white, bg = 'NONE', })
hl(0, "LazyReasonKeys", { fg = c.teal, bg = 'NONE', })
hl(0, "LazyTaskOutput", { fg = c.white, bg = 'NONE', })
hl(0, "LazyCommitIssue", { fg = c.pink, bg = 'NONE', })
hl(0, "LazyReasonEvent", { fg = c.yellow, bg = 'NONE', })
hl(0, "LazyReasonStart", { fg = c.white, bg = 'NONE', })
hl(0, "LazyReasonRuntime", { fg = c.nord_blue, bg = 'NONE', })
hl(0, "LazyReasonCmd", { fg = c.sun, bg = 'NONE', })
hl(0, "LazyReasonSource", { fg = c.cyan, bg = 'NONE', })
hl(0, "LazyReasonImport", { fg = c.white, bg = 'NONE', })
hl(0, "LazyProgressDone", { fg = c.green, bg = 'NONE', })

-- markdown
hl(0, "markdownBlockquote", { fg = c.orange, bg = 'NONE', })
hl(0, "markdownCode", { fg = c.teal, bg = 'NONE', })
hl(0, "markdownCodeBlock", { fg = c.teal, bg = 'NONE', })
hl(0, "markdownCodeDelimiter", { fg = c.teal, bg = 'NONE', })
hl(0, "markdownH1", { link = 'Title' })
hl(0, "markdownH2", { link = 'Title' })
hl(0, "markdownH3", { link = 'Title' })
hl(0, "markdownH4", { link = 'Title' })
hl(0, "markdownH5", { link = 'Title' })
hl(0, "markdownH6", { link = 'Title' })
hl(0, "markdownHeadingDelimiter", { fg = c.orange, bg = 'NONE', bold=true, })
hl(0, "markdownHeadingRule", { link = 'PreProc' })
hl(0, "markdownId", { link = 'Type' })
hl(0, "markdownIdDeclaration", { link = 'Typedef' })
hl(0, "markdownIdDelimiter", { link = 'Delimiter' })
hl(0, "markdownLinkDelimiter", { link = 'Delimiter' })
hl(0, "markdownBold", { link = 'Bold' })
hl(0, "markdownItalic", { link = 'Italic' })
hl(0, "markdownBoldItalic", { fg = c.yellow, bg = 'NONE', italic=true, bold=true, })
hl(0, "markdownListMarker", { fg = c.orange, bg = 'NONE', bold=true, })
hl(0, "markdownOrderedListMarker", { fg = c.orange, bg = 'NONE', bold=true, })
hl(0, "markdownRule", { link = 'PreProc' })
hl(0, "markdownUrl", { fg = c.cyan, bg = 'NONE', underline=true, })
hl(0, "markdownLinkText", { fg = c.cyan, bg = 'NONE', underline=true, })
hl(0, "markdownFootnote", { link = 'Typedef' })
hl(0, "markdownFootnoteDefinition", { link = 'Typedef' })
hl(0, "markdownEscape", { link = 'Special' })
hl(0, "@text.literal.markdown_inline", { fg = c.blue, bg = c.one_bg2, })
hl(0, "@punctuation.special.markdown", { fg = c.orange, bg = 'NONE', bold=true, })

-- WhichKey
hl(0, "WhichKey", { fg = c.cyan, bg = 'NONE', })
hl(0, "WhichKeySeperator", { link = 'Comment' })
hl(0, "WhichKeyGroup", { fg = c.blue, bg = 'NONE', })
hl(0, "WhichKeyDesc", { fg = c.base0E, bg = 'NONE', })
hl(0, "WhichKeyFloat", { fg = 'NONE', bg = c.darker_black, })
hl(0, "WhichKeyValue", { fg = c.base04, bg = 'NONE', })
hl(0, "WhichKeyBorder", { link = 'FloatBorder' })

-- Git
hl(0, "GitSignsAdd", { fg = c.green, bg = 'NONE', })
hl(0, "GitSignsChange", { fg = c.blue, bg = 'NONE', })
hl(0, "GitSignsDelete", { fg = c.red, bg = 'NONE', })

-- NvimTree
hl(0, "NvimTreeCursorLine", { fg = 'NONE', bg = '#282b37', })
hl(0, "NvimTreeEmptyFolderName", { fg = c.grey, bg = 'NONE', italic=true, })
hl(0, "NvimTreeEndOfBuffer", { fg = c.darker_black, bg = 'NONE', })
hl(0, "NvimTreeExecFile", { fg = c.green, bg = 'NONE', })
hl(0, "NvimTreeFolderIcon", { fg = c.blue, bg = 'NONE', })
hl(0, "NvimTreeFolderName", { fg = c.blue, bg = 'NONE', })
hl(0, "NvimTreeGitDeleted", { fg = c.red, bg = 'NONE', })
hl(0, "NvimTreeGitDirty", { fg = c.blue, bg = 'NONE', })
hl(0, "NvimTreeGitIgnored", { fg = c.grey, bg = 'NONE', italic=true, })
hl(0, "NvimTreeGitMerge", { fg = c.blue, bg = 'NONE', })
hl(0, "NvimTreeGitNew", { fg = c.vibrant_green, bg = 'NONE', })
hl(0, "NvimTreeGitRenamed", { fg = c.vibrant_green, bg = 'NONE', })
hl(0, "NvimTreeGitStaged", { fg = c.vibrant_green, bg = 'NONE', })
hl(0, "NvimTreeGitignoreIcon", { fg = c.red, bg = 'NONE', })
hl(0, "NvimTreeImageFile", { fg = c.light_grey, bg = 'NONE', })
hl(0, "NvimTreeIndentMarker", { fg = '#c5c5c5', bg = 'NONE', })
hl(0, "NvimTreeNormal", { fg = 'NONE', bg = c.darker_black, })
hl(0, "NvimTreeOpenedFolderName", { fg = c.blue, bg = 'NONE', italic=true, bold=true, })
hl(0, "NvimTreeRootFolder", { fg = c.base05, bg = 'NONE', bold=true, })
hl(0, "NvimTreeSpecialFile", { fg = c.orange, bg = 'NONE', })
hl(0, "NvimTreeSymlink", { fg = c.cyan, bg = 'NONE', })
hl(0, "NvimTreeVertSplit", { fg = c.darker_black, bg = c.darker_black, })

-- Quickscope
hl(0, "QuickScopePrimary", { fg = '#ff00ff', bg = 'NONE', bold=true, })
hl(0, "QuickScopeSecondary", { fg = '#00ffff', bg = 'NONE', bold=true, })

-- Eyeliner
hl(0, "EyelinerPrimary", { fg = '#ff00ff', bg = 'NONE', bold=true, })
hl(0, "EyelinerSecondary", { fg = '#00ffff', bg = 'NONE', bold=true, })

-- Telescope
hl(0, "TelescopeBorder", { fg = c.one_bg3, bg = 'NONE', })
hl(0, "TelescopeNormal", { fg = c.white, bg = 'NONE', })
hl(0, "TelescopePreviewTitle", { fg = c.black, bg = c.cyan, })
hl(0, "TelescopePromptBorder", { fg = c.one_bg3, bg = 'NONE', })
hl(0, "TelescopePromptNormal", { fg = c.white, bg = 'NONE', })
hl(0, "TelescopePromptPrefix", { fg = c.red, bg = 'NONE', })
hl(0, "TelescopePromptTitle", { fg = c.black, bg = c.red, bold=true, })
hl(0, "TelescopeResultsDiffAdd", { fg = c.green, bg = 'NONE', })
hl(0, "TelescopeResultsDiffChange", { fg = c.yellow, bg = 'NONE', })
hl(0, "TelescopeResultsDiffDelete", { fg = c.red, bg = 'NONE', })
hl(0, "TelescopeResultsTitle", { fg = c.black, bg = c.cyan, })
hl(0, "TelescopeSelection", { fg = c.white, bg = c.black2, })

-- Lir
hl(0, "LirFloatNormal", { fg = c.base05, bg = c.darker_black, })
hl(0, "LirDir", { fg = c.blue, bg = 'NONE', })
hl(0, "LirSymLink", { fg = c.cyan, bg = 'NONE', })
hl(0, "LirEmptyDirText", { link = 'Comment' })

-- Buffer
hl(0, "BufferCurrent", { fg = c.base05, bg = c.base00, })
hl(0, "BufferCurrentIndex", { fg = c.base05, bg = c.base00, })
hl(0, "BufferCurrentMod", { fg = c.sun, bg = c.base00, })
hl(0, "BufferCurrentSign", { fg = c.purple, bg = c.base00, })
hl(0, "BufferCurrentTarget", { fg = c.red, bg = c.base00, bold=true, })
hl(0, "BufferVisible", { fg = c.base05, bg = c.base00, })
hl(0, "BufferVisibleIndex", { fg = c.base05, bg = c.base00, })
hl(0, "BufferVisibleMod", { fg = c.sun, bg = c.base00, })
hl(0, "BufferVisibleSign", { fg = c.grey, bg = c.base00, })
hl(0, "BufferVisibleTarget", { fg = c.red, bg = c.base00, bold=true, })
hl(0, "BufferInactive", { fg = c.grey, bg = c.darker_black, })
hl(0, "BufferInactiveIndex", { fg = c.grey, bg = c.darker_black, })
hl(0, "BufferInactiveMod", { fg = c.sun, bg = c.darker_black, })
hl(0, "BufferInactiveSign", { fg = c.grey, bg = c.darker_black, })
hl(0, "BufferInactiveTarget", { fg = c.red, bg = c.darker_black, bold=true, })

-- Bufferline
hl(0, "BufferLineIndicatorSelected", { fg = c.grey_fg, bg = 'NONE', })

-- Codeaction
hl(0, "CodeActionMenuWarningMessageText", { fg = c.white, bg = 'NONE', })
hl(0, "CodeActionMenuWarningMessageBorder", { fg = c.red, bg = 'NONE', })
hl(0, "CodeActionMenuMenuIndex", { fg = c.blue, bg = 'NONE', })
hl(0, "CodeActionMenuMenuKind", { fg = c.green, bg = 'NONE', })
hl(0, "CodeActionMenuMenuTitle", { fg = c.white, bg = 'NONE', })
hl(0, "CodeActionMenuMenuDisabled", { link = 'Comment' })
hl(0, "CodeActionMenuMenuSelection", { fg = c.blue, bg = 'NONE', })
hl(0, "CodeActionMenuDetailsTitle", { fg = c.white, bg = 'NONE', })
hl(0, "CodeActionMenuDetailsLabel", { fg = c.yellow, bg = 'NONE', })
hl(0, "CodeActionMenuDetailsPreferred", { fg = c.green, bg = 'NONE', })
hl(0, "CodeActionMenuDetailsDisabled", { link = 'Comment' })
hl(0, "CodeActionMenuDetailsUndefined", { link = 'Comment' })

-- StatusLine
hl(0, "StatusLine", { fg = c.line, bg = c.statusline_bg, })
hl(0, "StatusLineNC", { fg = 'NONE', bg = c.statusline_bg, })
hl(0, "StatusLineSeparator", { fg = c.line, bg = 'NONE', })
hl(0, "StatusLineTerm", { fg = c.line, bg = 'NONE', })
hl(0, "StatusLineTermNC", { fg = c.line, bg = 'NONE', })

-- IndentBlankline
hl(0, "IndentBlanklineContextChar", { fg = c.grey, bg = 'NONE', })
hl(0, "IndentBlanklineContextStart", { fg = 'NONE', bg = c.one_bg2, })
hl(0, "IndentBlanklineChar", { fg = c.line, bg = 'NONE', })
hl(0, "IndentBlanklineSpaceChar", { fg = c.line, bg = 'NONE', })
hl(0, "IndentBlanklineSpaceCharBlankline", { fg = c.sun, bg = 'NONE', })

-- Bookmarks
hl(0, "BookmarkSign", { fg = c.gitsigns_change, bg = 'NONE', })
hl(0, "BookmarkAnnotationSign", { fg = c.yellow, bg = 'NONE', })
hl(0, "BookmarkLine", { link = 'Visual' })
hl(0, "BookmarkAnnotationLine", { link = 'Visual' })

-- Bqf
hl(0, "BqfPreviewBorder", { link = 'FloatBorder' })
hl(0, "BqfPreviewRange", { link = 'Visual' })

-- Navic
hl(0, "NavicIconsFile", { fg = c.base05, bg = 'NONE', })
hl(0, "NavicIconsModule", { fg = c.yellow, bg = 'NONE', })
hl(0, "NavicIconsNamespace", { fg = c.base05, bg = 'NONE', })
hl(0, "NavicIconsPackage", { fg = c.base05, bg = 'NONE', })
hl(0, "NavicIconsClass", { fg = c.orange, bg = 'NONE', })
hl(0, "NavicIconsMethod", { fg = c.blue, bg = 'NONE', })
hl(0, "NavicIconsProperty", { fg = c.vibrant_green, bg = 'NONE', })
hl(0, "NavicIconsField", { fg = c.vibrant_green, bg = 'NONE', })
hl(0, "NavicIconsConstructor", { fg = c.orange, bg = 'NONE', })
hl(0, "NavicIconsEnum", { fg = c.orange, bg = 'NONE', })
hl(0, "NavicIconsInterface", { fg = c.orange, bg = 'NONE', })
hl(0, "NavicIconsFunction", { fg = c.blue, bg = 'NONE', })
hl(0, "NavicIconsVariable", { fg = c.base0E, bg = 'NONE', })
hl(0, "NavicIconsConstant", { fg = c.base0E, bg = 'NONE', })
hl(0, "NavicIconsString", { fg = c.green, bg = 'NONE', })
hl(0, "NavicIconsNumber", { fg = c.orange, bg = 'NONE', })
hl(0, "NavicIconsBoolean", { fg = c.orange, bg = 'NONE', })
hl(0, "NavicIconsArray", { fg = c.orange, bg = 'NONE', })
hl(0, "NavicIconsObject", { fg = c.orange, bg = 'NONE', })
hl(0, "NavicIconsKey", { fg = c.purple, bg = 'NONE', })
hl(0, "NavicIconsKeyword", { fg = c.purple, bg = 'NONE', })
hl(0, "NavicIconsNull", { fg = c.orange, bg = 'NONE', })
hl(0, "NavicIconsEnumMember", { fg = c.vibrant_green, bg = 'NONE', })
hl(0, "NavicIconsStruct", { fg = c.orange, bg = 'NONE', })
hl(0, "NavicIconsEvent", { fg = c.orange, bg = 'NONE', })
hl(0, "NavicIconsOperator", { fg = c.base05, bg = 'NONE', })
hl(0, "NavicIconsTypeParameter", { fg = c.vibrant_green, bg = 'NONE', })
hl(0, "NavicText", { fg = c.base05, bg = 'NONE', })
hl(0, "NavicSeparator", { fg = c.base05, bg = 'NONE', })

-- SymbolOutline
hl(0, "SymbolsOutlineConnector", { fg = c.base04, bg = 'NONE', })

-- Notify
hl(0, "NotifyERRORBorder", { fg = c.red, bg = 'NONE', })
hl(0, "NotifyWARNBorder", { fg = c.yellow, bg = 'NONE', })
hl(0, "NotifyINFOBorder", { fg = c.base0D, bg = 'NONE', })
hl(0, "NotifyDEBUGBorder", { fg = c.grey_fg, bg = 'NONE', })
hl(0, "NotifyTRACEBorder", { fg = c.purple, bg = 'NONE', })
hl(0, "NotifyERRORIcon", { fg = c.red, bg = 'NONE', })
hl(0, "NotifyWARNIcon", { fg = c.yellow, bg = 'NONE', })
hl(0, "NotifyINFOIcon", { fg = c.base0D, bg = 'NONE', })
hl(0, "NotifyDEBUGIcon", { fg = c.grey_fg, bg = 'NONE', })
hl(0, "NotifyTRACEIcon", { fg = c.purple, bg = 'NONE', })
hl(0, "NotifyERRORTitle", { fg = c.red, bg = 'NONE', })
hl(0, "NotifyWARNTitle", { fg = c.yellow, bg = 'NONE', })
hl(0, "NotifyINFOTitle", { fg = c.base0D, bg = 'NONE', })
hl(0, "NotifyDEBUGTitle", { fg = c.grey_fg, bg = 'NONE', })
hl(0, "NotifyTRACETitle", { fg = c.purple, bg = 'NONE', })
hl(0, "NotifyERRORBody", { fg = c.base05, bg = c.base00, })
hl(0, "NotifyWARNBody", { fg = c.base05, bg = c.base00, })
hl(0, "NotifyINFOBody", { fg = c.base05, bg = c.base00, })
hl(0, "NotifyDEBUGBody", { fg = c.base05, bg = c.base00, })
hl(0, "NotifyTRACEBody", { fg = c.base05, bg = c.base00, })

-- TreesitterContext
hl(0, "TreesitterContext", { fg = 'NONE', bg = c.darker_black, })

-- Hop
hl(0, "HopNextKey", { fg = c.base0F, bg = 'NONE', })
hl(0, "HopNextKey1", { fg = c.base0A, bg = 'NONE', })
hl(0, "HopNextKey2", { fg = '#164a5b', bg = 'NONE', })
hl(0, "HopUnmatched", { fg = c.light_grey, bg = 'NONE', })
hl(0, "HopPreview", { fg = '#c7ba7d', bg = 'NONE', })

-- Crates
hl(0, "CratesNvimLoading", { fg = c.base0D, bg = 'NONE', })
hl(0, "CratesNvimVersion", { fg = c.base0D, bg = 'NONE', })

-- Headlines
hl(0, "CodeBlock", { fg = 'NONE', bg = c.one_bg, })
hl(0, "Headline", { fg = 'NONE', bg = c.one_bg, })

-- Mini
hl(0, "MiniJump", { fg = c.white, bg = c.one_bg3, })
hl(0, "MiniHipatternsFixme", { fg = c.green, bg = 'NONE', })
hl(0, "MiniHipatternsHack", { fg = c.blue, bg = 'NONE', })
hl(0, "MiniHipatternsTodo", { fg = c.cyan, bg = 'NONE', })
hl(0, "MiniHipatternsNote", { fg = c.sun, bg = 'NONE', })
hl(0, "MiniHipatternsFFS", { fg = c.red, bg = 'NONE', })

-- Alpha
hl(0, "AlphaHeader", { fg = c.grey_fg, bg = 'NONE', })
hl(0, "AlphaButtons", { fg = c.grey_fg, bg = 'NONE', })

-- Dap
hl(0, "DapBreakpoint", { fg = c.red, bg = 'NONE', })
hl(0, "DapBreakpointCondition", { fg = c.yellow, bg = 'NONE', })
hl(0, "DapLogPoint", { fg = c.cyan, bg = 'NONE', })
hl(0, "DapStopped", { fg = c.baby_pink, bg = 'NONE', })

-- DapUI
hl(0, "DAPUIScope", { fg = c.cyan, bg = 'NONE', })
hl(0, "DAPUIType", { fg = c.dark_purple, bg = 'NONE', })
hl(0, "DAPUIValue", { fg = c.cyan, bg = 'NONE', })
hl(0, "DAPUIVariable", { fg = c.white, bg = 'NONE', })
hl(0, "DapUIModifiedValue", { fg = c.orange, bg = 'NONE', })
hl(0, "DapUIDecoration", { fg = c.cyan, bg = 'NONE', })
hl(0, "DapUIThread", { fg = c.green, bg = 'NONE', })
hl(0, "DapUIStoppedThread", { fg = c.cyan, bg = 'NONE', })
hl(0, "DapUISource", { fg = c.lavender, bg = 'NONE', })
hl(0, "DapUILineNumber", { fg = c.cyan, bg = 'NONE', })
hl(0, "DapUIFloatBorder", { fg = c.cyan, bg = 'NONE', })
hl(0, "DapUIWatchesEmpty", { fg = c.baby_pink, bg = 'NONE', })
hl(0, "DapUIWatchesValue", { fg = c.green, bg = 'NONE', })
hl(0, "DapUIWatchesError", { fg = c.baby_pink, bg = 'NONE', })
hl(0, "DapUIBreakpointsPath", { fg = c.cyan, bg = 'NONE', })
hl(0, "DapUIBreakpointsInfo", { fg = c.green, bg = 'NONE', })
hl(0, "DapUIBreakPointsCurrentLine", { fg = c.green, bg = c._, bold=true, })
hl(0, "DapUIBreakpointsDisabledLine", { fg = c.grey_fg2, bg = 'NONE', })
hl(0, "DapUIStepOver", { fg = c.blue, bg = 'NONE', })
hl(0, "DapUIStepOverNC", { fg = c.blue, bg = 'NONE', })
hl(0, "DapUIStepInto", { fg = c.blue, bg = 'NONE', })
hl(0, "DapUIStepIntoNC", { fg = c.blue, bg = 'NONE', })
hl(0, "DapUIStepBack", { fg = c.blue, bg = 'NONE', })
hl(0, "DapUIStepBackNC", { fg = c.blue, bg = 'NONE', })
hl(0, "DapUIStepOut", { fg = c.blue, bg = 'NONE', })
hl(0, "DapUIStepOutNC", { fg = c.blue, bg = 'NONE', })
hl(0, "DapUIStop", { fg = c.red, bg = 'NONE', })
hl(0, "DapUIStopNC", { fg = c.red, bg = 'NONE', })
hl(0, "DapUIPlayPause", { fg = c.green, bg = 'NONE', })
hl(0, "DapUIPlayPauseNC", { fg = c.green, bg = 'NONE', })
hl(0, "DapUIRestart", { fg = c.green, bg = 'NONE', })
hl(0, "DapUIRestartNC", { fg = c.green, bg = 'NONE', })
hl(0, "DapUIUnavailable", { fg = c.grey_fg, bg = 'NONE', })
hl(0, "DapUIUnavailableNC", { fg = c.grey_fg, bg = 'NONE', })

-- RainbowDelimiters
hl(0, "RainbowDelimiterRed", { fg = c.red, bg = 'NONE', })
hl(0, "RainbowDelimiterYellow", { fg = c.yellow, bg = 'NONE', })
hl(0, "RainbowDelimiterBlue", { fg = c.blue, bg = 'NONE', })
hl(0, "RainbowDelimiterOrange", { fg = c.orange, bg = 'NONE', })
hl(0, "RainbowDelimiterGreen", { fg = c.green, bg = 'NONE', })
hl(0, "RainbowDelimiterViolet", { fg = c.purple, bg = 'NONE', })
hl(0, "RainbowDelimiterCyan", { fg = c.cyan, bg = 'NONE', })

-- Trouble
hl(0, "TroubleCount", { fg = c.pink, bg = 'NONE', })
hl(0, "TroubleCode", { fg = c.white, bg = 'NONE', })
hl(0, "TroubleWarning", { fg = c.orange, bg = 'NONE', })
hl(0, "TroubleSignWarning", { link = 'DiagnosticWarn' })
hl(0, "TroubleTextWarning", { fg = c.white, bg = 'NONE', })
hl(0, "TroublePreview", { fg = c.red, bg = 'NONE', })
hl(0, "TroubleSource", { fg = c.cyan, bg = 'NONE', })
hl(0, "TroubleSignHint", { link = 'DiagnosticHint' })
hl(0, "TroubleTextHint", { fg = c.white, bg = 'NONE', })
hl(0, "TroubleHint", { fg = c.orange, bg = 'NONE', })
hl(0, "TroubleSignOther", { link = 'DiagnosticNormal' })
hl(0, "TroubleSignInformation", { fg = c.white, bg = 'NONE', })
hl(0, "TroubleTextInformation", { fg = c.white, bg = 'NONE', })
hl(0, "TroubleInformation", { fg = c.white, bg = 'NONE', })
hl(0, "TroubleError", { fg = c.red, bg = 'NONE', })
hl(0, "TroubleTextError", { fg = c.white, bg = 'NONE', })
hl(0, "TroubleSignError", { link = 'DiagnosticError' })
hl(0, "TroubleText", { fg = c.white, bg = 'NONE', })
hl(0, "TroubleFile", { fg = c.yellow, bg = 'NONE', })
hl(0, "TroubleFoldIcon", { link = 'Folded' })
hl(0, "TroubleNormal", { fg = c.white, bg = 'NONE', })
hl(0, "TroubleLocation", { fg = c.red, bg = 'NONE', })
hl(0, "TroubleIndent", { link = 'Comment' })

-- DevIcons
hl(0, "DevIconDefault", { fg = c.red, bg = 'NONE', })
hl(0, "DevIconc", { fg = c.blue, bg = 'NONE', })
hl(0, "DevIconcss", { fg = c.blue, bg = 'NONE', })
hl(0, "DevIcondeb", { fg = c.cyan, bg = 'NONE', })
hl(0, "DevIconDockerfile", { fg = c.cyan, bg = 'NONE', })
hl(0, "DevIconhtml", { fg = c.baby_pink, bg = 'NONE', })
hl(0, "DevIconjpeg", { fg = c.dark_purple, bg = 'NONE', })
hl(0, "DevIconjpg", { fg = c.dark_purple, bg = 'NONE', })
hl(0, "DevIconjs", { fg = c.sun, bg = 'NONE', })
hl(0, "DevIconkt", { fg = c.orange, bg = 'NONE', })
hl(0, "DevIconlock", { fg = c.red, bg = 'NONE', })
hl(0, "DevIconlua", { fg = c.blue, bg = 'NONE', })
hl(0, "DevIconmp3", { fg = c.white, bg = 'NONE', })
hl(0, "DevIconmp4", { fg = c.white, bg = 'NONE', })
hl(0, "DevIconout", { fg = c.white, bg = 'NONE', })
hl(0, "DevIconpng", { fg = c.dark_purple, bg = 'NONE', })
hl(0, "DevIconpy", { fg = c.cyan, bg = 'NONE', })
hl(0, "DevIcontoml", { fg = c.blue, bg = 'NONE', })
hl(0, "DevIconts", { fg = c.teal, bg = 'NONE', })
hl(0, "DevIconttf", { fg = c.white, bg = 'NONE', })
hl(0, "DevIconrb", { fg = c.pink, bg = 'NONE', })
hl(0, "DevIconrpm", { fg = c.orange, bg = 'NONE', })
hl(0, "DevIconvue", { fg = c.vibrant_green, bg = 'NONE', })
hl(0, "DevIconwoff", { fg = c.white, bg = 'NONE', })
hl(0, "DevIconwoff2", { fg = c.white, bg = 'NONE', })
hl(0, "DevIconxz", { fg = c.sun, bg = 'NONE', })
hl(0, "DevIconzip", { fg = c.sun, bg = 'NONE', })
hl(0, "DevIconZig", { fg = c.orange, bg = 'NONE', })
hl(0, "DevIconMd", { fg = c.blue, bg = 'NONE', })
hl(0, "DevIconTSX", { fg = c.blue, bg = 'NONE', })
hl(0, "DevIconJSX", { fg = c.blue, bg = 'NONE', })
hl(0, "DevIconSvelte", { fg = c.red, bg = 'NONE', })
hl(0, "DevIconJava", { fg = c.orange, bg = 'NONE', })
hl(0, "DevIconDart", { fg = c.cyan, bg = 'NONE', })

-- Mason
hl(0, "MasonHeader", { fg = c.black, bg = c.red, })
hl(0, "MasonHighlight", { fg = c.blue, bg = 'NONE', })
hl(0, "MasonHighlightBlock", { fg = c.green, bg = c.black, })
hl(0, "MasonHighlightBlockBold", { link = 'MasonHighlightBlock' })
hl(0, "MasonHeaderSecondary", { link = 'MasonHighlightBlock' })
hl(0, "MasonMuted", { fg = c.light_grey, bg = 'NONE', })
hl(0, "MasonMutedBlock", { fg = c.one_bg, bg = c.light_grey, })

-- Base16
hl(0, "ThemeBase00", { fg = c.base00, bg = 'NONE', })
hl(0, "ThemeBase01", { fg = c.base01, bg = 'NONE', })
hl(0, "ThemeBase02", { fg = c.base02, bg = 'NONE', })
hl(0, "ThemeBase03", { fg = c.base03, bg = 'NONE', })
hl(0, "ThemeBase04", { fg = c.base04, bg = 'NONE', })
hl(0, "ThemeBase05", { fg = c.base05, bg = 'NONE', })
hl(0, "ThemeBase06", { fg = c.base06, bg = 'NONE', })
hl(0, "ThemeBase07", { fg = c.base07, bg = 'NONE', })
hl(0, "ThemeBase08", { fg = c.base08, bg = 'NONE', })
hl(0, "ThemeBase09", { fg = c.base09, bg = 'NONE', })
hl(0, "ThemeBase0A", { fg = c.base0A, bg = 'NONE', })
hl(0, "ThemeBase0B", { fg = c.base0B, bg = 'NONE', })
hl(0, "ThemeBase0C", { fg = c.base0C, bg = 'NONE', })
hl(0, "ThemeBase0D", { fg = c.base0D, bg = 'NONE', })
hl(0, "ThemeBase0E", { fg = c.base0E, bg = 'NONE', })
hl(0, "ThemeBase0F", { fg = c.base0F, bg = 'NONE', })

-- Language
hl(0, "xmlTag", { fg = c.cyan, bg = 'NONE', })
hl(0, "xmlTagName", { fg = c.cyan, bg = 'NONE', })
hl(0, "xmlEndTag", { fg = c.cyan, bg = 'NONE', })
hl(0, "yamlPlainScalar", { fg = c.orange, bg = 'NONE', })
hl(0, "yamlTSField", { fg = c.blue, bg = 'NONE', })
hl(0, "luaFunc", { fg = c.yellow, bg = 'NONE', })
hl(0, "luaFunction", { fg = c.blue, bg = 'NONE', })
hl(0, "hclTSPunctSpecial", { fg = c.grey_fg, bg = 'NONE', })
hl(0, "htmlH1", { fg = c.white, bg = 'NONE', })
hl(0, "htmlH2", { fg = c.white, bg = 'NONE', })
hl(0, "htmlH3", { fg = c.white, bg = 'NONE', })
hl(0, "htmlH4", { fg = c.white, bg = 'NONE', })
hl(0, "htmlH5", { fg = c.white, bg = 'NONE', })
hl(0, "htmlH6", { fg = c.white, bg = 'NONE', })
hl(0, "htmlHead", { fg = c.white, bg = 'NONE', })
hl(0, "htmlTitle", { fg = c.white, bg = 'NONE', })
hl(0, "htmlArg", { fg = c.white, bg = 'NONE', })
hl(0, "htmlTag", { fg = c.blue, bg = 'NONE', })
hl(0, "htmlTagN", { fg = c.blue, bg = 'NONE', })
hl(0, "htmlTagName", { fg = c.blue, bg = 'NONE', })
hl(0, "htmlComment", { fg = c.green, bg = 'NONE', })
hl(0, "htmlLink", { fg = c.orange, bg = 'NONE', underline=true, })
hl(0, "cssBraces", { fg = c.white, bg = 'NONE', })
hl(0, "cssInclude", { fg = c.purple, bg = 'NONE', })
hl(0, "cssTagName", { fg = c.yellow, bg = 'NONE', })
hl(0, "cssClassName", { fg = c.yellow, bg = 'NONE', })
hl(0, "cssPseudoClass", { fg = c.yellow, bg = 'NONE', })
hl(0, "cssPseudoClassId", { fg = c.yellow, bg = 'NONE', })
hl(0, "cssPseudoClassLang", { fg = c.yellow, bg = 'NONE', })
hl(0, "cssIdentifier", { fg = c.yellow, bg = 'NONE', })
hl(0, "cssProp", { fg = c.white, bg = 'NONE', })
hl(0, "cssDefinition", { fg = c.white, bg = 'NONE', })
hl(0, "cssAttr", { fg = c.orange, bg = 'NONE', })
hl(0, "cssAttrRegion", { fg = c.orange, bg = 'NONE', })
hl(0, "cssColor", { fg = c.orange, bg = 'NONE', })
hl(0, "cssFunction", { fg = c.purple, bg = 'NONE', })
hl(0, "cssFunctionName", { fg = c.yellow, bg = 'NONE', })
hl(0, "cssVendor", { fg = c.orange, bg = 'NONE', })
hl(0, "cssValueNumber", { fg = c.orange, bg = 'NONE', })
hl(0, "cssValueLength", { fg = c.orange, bg = 'NONE', })
hl(0, "cssUnitDecorators", { fg = c.orange, bg = 'NONE', })
hl(0, "cssStyle", { fg = c.white, bg = 'NONE', })
hl(0, "cssImportant", { fg = c.blue, bg = 'NONE', })
hl(0, "jsonKeyword", { fg = c.blue, bg = 'NONE', })
hl(0, "yamlBlockMappingKey", { fg = c.blue, bg = 'NONE', })
hl(0, "tomlTSProperty", { fg = c.blue, bg = 'NONE', })