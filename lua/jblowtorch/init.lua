
 
local M = {}

function M.setup()
 local colors = {
   yellow     = "#E6DB74",
   orange     = "#FD971F",
   red        = "#F92672",
   magenta    = "#FD5FF0",
   blue       = "#66D9EF",
   green      = "#A6E22E",
   cyan       = "#A1EFE4",
   violet     = "#AE81FF",

   cursor     = "#00EE00",
   background = "#072626",
   gutter     = "#072626",
   selection  = "#155096",
   text       = "#ffffff",
   comment    = "#3DDF23",
   punctuation= "#8cde94",
   type       = "#98FB98",
   keyword    = "#98fb98",
   variable   = "#ffffff",
   function_  = "#D3B58D",
   string     = "#0FDFAF",
   constant   = "#87ffde",
   macro      = "#E0AD82",
   number     = "#D699B5",
   white      = "#ffffff",
   error      = "#ff0000",
   warning    = "#ffaa00",
   highlight  = "#0b3335",
   line_fg    = "#126367",
   lualine_fg = "#12251b",
   lualine_bg = "#d3b58e",

   dimmed_keyword = "#b0b0b0",
   dimmed_function = "#cccccc",
   dimmed_variable = "#a0b8c8",
   dimmed_string = "#2fa89e",
   dimmed_type = "#79c4a6",
 }

 vim.cmd("highlight clear")
 vim.o.background = "dark"
 vim.g.colors_name = "jblowtorch"

 local set = vim.api.nvim_set_hl

 -- Core UI
 -- set(0, "Normal",           { fg = colors.text, bg = colors.background })
 -- set(0, "NormalFloat",      { fg = colors.text, bg = colors.background })
 set(0, "Normal",           { fg = colors.text })
 set(0, "NormalFloat",      { fg = colors.text })
 set(0, "FloatBorder",      { bg = colors.black })
 set(0, "Cursor",           { bg = colors.cursor })
 set(0, "Visual",           { bg = colors.selection })
 -- set(0, "LineNr",           { fg = colors.line_fg, bg = colors.background })
 -- set(0, "CursorLineNr",     { fg = colors.white, bg = colors.background })
 set(0, "LineNr",           { fg = colors.line_fg })
 set(0, "CursorLineNr",     { fg = colors.white })
 set(0, "CursorLine",       { bg = colors.highlight })
 set(0, "ColorColumn",      { bg = colors.highlight })
 set(0, "VertSplit",        { fg = colors.line_fg })
 set(0, "MatchParen",       { bg = colors.selection })
 set(0, "Directory",        { fg = colors.comment })

 -- Syntax
 set(0, "Comment",          { fg = colors.comment })
 set(0, "String",           { fg = colors.string })
 set(0, "Number",           { fg = colors.number })
 set(0, "Boolean",          { fg = colors.constant })
 set(0, "Constant",         { fg = colors.variable })
 set(0, "Identifier",       { fg = colors.variable })
 set(0, "Function",         { fg = colors.function_ })
 set(0, "Statement",        { fg = colors.keyword })
 set(0, "Keyword",          { fg = colors.keyword })
 set(0, "Type",             { fg = colors.type })
 set(0, "PreProc",          { fg = colors.macro })
 set(0, "Special",          { fg = colors.variable })
 set(0, "WarningMsg",       { fg = colors.warning })
 set(0, "Error",            { fg = colors.error })

 -- Diagnostics
 set(0, "DiagnosticError",  { fg = colors.red })
 set(0, "DiagnosticWarn",   { fg = colors.warning })
 set(0, "DiagnosticInfo",   { fg = colors.blue })
 set(0, "DiagnosticHint",   { fg = colors.cyan })

 -- Treesitter highlights
 set(0, "@comment",        { link = "Comment" })
 set(0, "@string",         { link = "String" })
 set(0, "@number",         { link = "Number" })
 set(0, "@boolean",        { link = "Boolean" })
 set(0, "@constant",       { link = "Constant" })
 set(0, "@function",       { link = "Function" })
 set(0, "@function.builtin", { link = "Function" })
 set(0, "@variable",       { link = "Identifier" })
 set(0, "@type",           { link = "Type" })
 set(0, "@keyword",        { link = "Keyword" })
 set(0, "@keyword.function", { link = "Keyword" })
 set(0, "@field",          { link = "Identifier" })
 set(0, "@property",       { link = "Identifier" })
 set(0, "@parameter",      { link = "Identifier" })

 -- C Specifics
 set(0, "@keyword.conditional.ternary.c",  { link = "Normal" })
 set(0, "@type.builtin.c",                 { link = "Type" })
 set(0, "@character.c",                 { link = "String" })

end


return M
