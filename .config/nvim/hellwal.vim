if has('termguicolors')
  set termguicolors
endif

hi clear
if exists("syntax_on")
  syntax reset
endif

set background=dark
let g:colors_name = "hellwal"

if !filereadable(expand("~/.cache/hellwal/colors.vim"))
  finish
endif

source ~/.cache/hellwal/colors.vim

function! s:Hi(group, fg, bg, gui) abort
  let l:cmd = "hi " . a:group
  if a:fg !=# ""
    let l:cmd .= " guifg=" . a:fg
  endif
  if a:bg !=# ""
    let l:cmd .= " guibg=" . a:bg
  endif
  if a:gui !=# ""
    let l:cmd .= " gui=" . a:gui
  endif
  execute l:cmd
endfunction

function! s:Link(from, to) abort
  execute "hi! link " . a:from . " " . a:to
endfunction

call s:Hi("Normal",              g:hellwal_foreground, g:hellwal_background, "")
call s:Hi("NormalNC",            g:hellwal_foreground, g:hellwal_background, "")
call s:Hi("EndOfBuffer",         g:hellwal_background, g:hellwal_background, "")
call s:Hi("NonText",             g:hellwal_6,          g:hellwal_background, "")
call s:Hi("Whitespace",          g:hellwal_6,          g:hellwal_background, "")

call s:Hi("Cursor",              g:hellwal_background, g:hellwal_cursor,     "")
call s:Hi("CursorIM",            g:hellwal_background, g:hellwal_cursor,     "")
call s:Hi("CursorColumn",        "",                   g:hellwal_8,          "")
call s:Hi("CursorLine",          "",                   g:hellwal_8,          "")
call s:Hi("ColorColumn",         "",                   g:hellwal_8,          "")

call s:Hi("LineNr",              g:hellwal_6,          g:hellwal_background, "")
call s:Hi("CursorLineNr",        g:hellwal_15,         g:hellwal_background, "")
call s:Hi("SignColumn",          "",                   g:hellwal_background, "")
call s:Hi("FoldColumn",          g:hellwal_6,          g:hellwal_background, "")
call s:Hi("Folded",              g:hellwal_6,          g:hellwal_0,          "")

call s:Hi("Visual",              "",                   g:hellwal_9,          "")
call s:Hi("VisualNOS",           "",                   g:hellwal_9,          "")
call s:Hi("Search",              g:hellwal_background, g:hellwal_14,         "")
call s:Hi("IncSearch",           g:hellwal_background, g:hellwal_13,         "")
call s:Hi("CurSearch",           g:hellwal_background, g:hellwal_13,         "")

call s:Hi("StatusLine",          g:hellwal_foreground, g:hellwal_0,          "")
call s:Hi("StatusLineNC",        g:hellwal_6,          g:hellwal_0,          "")
call s:Hi("VertSplit",           g:hellwal_border,     g:hellwal_background, "")
call s:Hi("WinSeparator",        g:hellwal_border,     g:hellwal_background, "")
call s:Hi("TabLine",             g:hellwal_6,          g:hellwal_0,          "")
call s:Hi("TabLineSel",          g:hellwal_15,         g:hellwal_0,          "")
call s:Hi("TabLineFill",         g:hellwal_6,          g:hellwal_0,          "")

call s:Hi("Pmenu",               g:hellwal_foreground, g:hellwal_0,          "")
call s:Hi("PmenuSel",            g:hellwal_background, g:hellwal_14,         "")
call s:Hi("PmenuSbar",           "",                   g:hellwal_0,          "")
call s:Hi("PmenuThumb",          "",                   g:hellwal_6,          "")

call s:Hi("WildMenu",            g:hellwal_background, g:hellwal_14,         "")
call s:Hi("Question",            g:hellwal_14,         "",                   "")
call s:Hi("Title",               g:hellwal_15,         "",                   "bold")

call s:Hi("ErrorMsg",            g:hellwal_1,          "",                   "bold")
call s:Hi("WarningMsg",          g:hellwal_3,          "",                   "bold")
call s:Hi("ModeMsg",             g:hellwal_14,         "",                   "")
call s:Hi("MoreMsg",             g:hellwal_14,         "",                   "")

call s:Hi("Directory",           g:hellwal_14,         "",                   "")
call s:Hi("SpecialKey",          g:hellwal_6,          "",                   "")

call s:Hi("MatchParen",          g:hellwal_background, g:hellwal_14,         "bold")
call s:Hi("Todo",                g:hellwal_background, g:hellwal_13,         "bold")

call s:Hi("DiffAdd",             g:hellwal_2,          g:hellwal_0,          "")
call s:Hi("DiffChange",          g:hellwal_3,          g:hellwal_0,          "")
call s:Hi("DiffDelete",          g:hellwal_1,          g:hellwal_0,          "")
call s:Hi("DiffText",            g:hellwal_15,         g:hellwal_8,          "bold")

call s:Hi("SpellBad",            g:hellwal_1,          "",                   "underline")
call s:Hi("SpellCap",            g:hellwal_3,          "",                   "underline")
call s:Hi("SpellRare",           g:hellwal_5,          "",                   "underline")
call s:Hi("SpellLocal",          g:hellwal_2,          "",                   "underline")

call s:Hi("DiagnosticError",     g:hellwal_1,          "",                   "")
call s:Hi("DiagnosticWarn",      g:hellwal_3,          "",                   "")
call s:Hi("DiagnosticInfo",      g:hellwal_4,          "",                   "")
call s:Hi("DiagnosticHint",      g:hellwal_6,          "",                   "")

call s:Hi("DiagnosticUnderlineError", "", "", "underline")
call s:Hi("DiagnosticUnderlineWarn",  "", "", "underline")
call s:Hi("DiagnosticUnderlineInfo",  "", "", "underline")
call s:Hi("DiagnosticUnderlineHint",  "", "", "underline")

call s:Hi("Constant",            g:hellwal_13,         "",                   "")
call s:Hi("String",              g:hellwal_2,          "",                   "")
call s:Hi("Character",           g:hellwal_2,          "",                   "")
call s:Hi("Number",              g:hellwal_13,         "",                   "")
call s:Hi("Boolean",             g:hellwal_13,         "",                   "")
call s:Hi("Float",               g:hellwal_13,         "",                   "")

call s:Hi("Identifier",          g:hellwal_15,         "",                   "")
call s:Hi("Function",            g:hellwal_14,         "",                   "")

call s:Hi("Statement",           g:hellwal_5,          "",                   "")
call s:Hi("Conditional",         g:hellwal_5,          "",                   "")
call s:Hi("Repeat",              g:hellwal_5,          "",                   "")
call s:Hi("Label",               g:hellwal_5,          "",                   "")
call s:Hi("Operator",            g:hellwal_5,          "",                   "")
call s:Hi("Keyword",             g:hellwal_5,          "",                   "")
call s:Hi("Exception",           g:hellwal_5,          "",                   "")

call s:Hi("PreProc",             g:hellwal_4,          "",                   "")
call s:Hi("Include",             g:hellwal_4,          "",                   "")
call s:Hi("Define",              g:hellwal_4,          "",                   "")
call s:Hi("Macro",               g:hellwal_4,          "",                   "")
call s:Hi("PreCondit",           g:hellwal_4,          "",                   "")

call s:Hi("Type",                g:hellwal_3,          "",                   "")
call s:Hi("StorageClass",        g:hellwal_3,          "",                   "")
call s:Hi("Structure",           g:hellwal_3,          "",                   "")
call s:Hi("Typedef",             g:hellwal_3,          "",                   "")

call s:Hi("Special",             g:hellwal_11,         "",                   "")
call s:Hi("SpecialChar",         g:hellwal_11,         "",                   "")
call s:Hi("Tag",                 g:hellwal_11,         "",                   "")
call s:Hi("Delimiter",           g:hellwal_11,         "",                   "")
call s:Hi("SpecialComment",      g:hellwal_6,          "",                   "")
call s:Hi("Debug",               g:hellwal_11,         "",                   "")

call s:Hi("Underlined",          g:hellwal_14,         "",                   "underline")
call s:Hi("Ignore",              g:hellwal_6,          "",                   "")
call s:Hi("Error",               g:hellwal_1,          "",                   "bold")
call s:Hi("Comment",             g:hellwal_6,          "",                   "italic")

call s:Hi("QuickFixLine",        g:hellwal_background, g:hellwal_14,         "")
call s:Hi("qfLineNr",            g:hellwal_6,          "",                   "")

call s:Hi("GitSignsAdd",         g:hellwal_2,          "",                   "")
call s:Hi("GitSignsChange",      g:hellwal_3,          "",                   "")
call s:Hi("GitSignsDelete",      g:hellwal_1,          "",                   "")

call s:Link("DiagnosticSignError", "DiagnosticError")
call s:Link("DiagnosticSignWarn",  "DiagnosticWarn")
call s:Link("DiagnosticSignInfo",  "DiagnosticInfo")
call s:Link("DiagnosticSignHint",  "DiagnosticHint")

call s:Link("NormalFloat",       "Pmenu")
call s:Link("FloatBorder",       "VertSplit")

call s:Link("WinBar",            "StatusLine")
call s:Link("WinBarNC",          "StatusLineNC")

call s:Link("MsgArea",           "Normal")
call s:Link("MsgSeparator",      "VertSplit")
call s:Link("NormalSB",          "Normal")
call s:Link("StatusLineTerm",    "StatusLine")
call s:Link("StatusLineTermNC",  "StatusLineNC")

call s:Link("TelescopeNormal",   "Normal")
call s:Link("TelescopeBorder",   "VertSplit")
call s:Link("TelescopeSelection","Visual")

call s:Link("CmpItemAbbr",       "Normal")
call s:Link("CmpItemAbbrMatch",  "Search")
call s:Link("CmpItemMenu",       "Comment")

