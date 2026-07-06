-- ~/.config/nvim/colors/origamid.lua
-- Native Neovim colorscheme ported from the Origamid VS Code theme.
-- Because it lives in colors/, `:colorscheme origamid` just works.

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "origamid"

local c = {
  bg = "#18181b",
  bg_dark = "#111114",
  bg_darker = "#000000",
  bg_float = "#313134",
  bg_sel = "#555558",
  line_hl = "#1c1c1f",
  gutter = "#333336",

  fg = "#e4e4e7",
  fg_dim = "#cccccf",
  fg_muted = "#88888b",
  fg_faint = "#666669",
  fg_line_nr = "#333336",

  purple = "#aa99ff",
  purple_soft = "#bba0ff",
  yellow = "#ffdd44",
  green = "#88dd33",
  green_alt = "#88cc44",
  blue = "#77ccff",
  blue_soft = "#88bbff",
  prop = "#cccccf",
  prop_alt = "#bbbbcc",
  punct = "#99999c",
  comment = "#88888b",

  error = "#ee5500",
  warn = "#77ccff",
  added = "#ffdd44",
  modified = "#77ccff",
  deleted = "#77ccff",
}

local hi = function(g, o)
  vim.api.nvim_set_hl(0, g, o)
end

-- Editor UI
hi("Normal", { fg = c.fg, bg = c.bg })
hi("NormalNC", { fg = c.fg, bg = c.bg })
hi("NormalFloat", { fg = c.fg_dim, bg = c.bg_float })
hi("FloatBorder", { fg = c.bg_darker, bg = c.bg_float })
hi("FloatTitle", { fg = c.fg, bg = c.bg_float })
hi("ColorColumn", { bg = c.line_hl })
hi("Cursor", { fg = c.bg, bg = c.fg })
hi("CursorLine", { bg = c.line_hl })
hi("CursorColumn", { bg = c.line_hl })
hi("LineNr", { fg = c.fg_line_nr })
hi("CursorLineNr", { fg = c.fg_muted })
hi("SignColumn", { bg = c.bg })
hi("WinSeparator", { fg = c.bg_dark })
hi("VertSplit", { fg = c.bg_dark })
hi("Folded", { fg = c.fg_muted, bg = c.bg_dark })
hi("FoldColumn", { fg = c.fg_faint, bg = c.bg })
hi("Visual", { bg = c.bg_sel })
hi("Search", { bg = "#444447" })
hi("IncSearch", { fg = c.bg, bg = c.yellow })
hi("CurSearch", { fg = c.bg, bg = c.yellow })
hi("MatchParen", { fg = c.yellow, bg = c.gutter, bold = true })
hi("NonText", { fg = c.bg_sel })
hi("Whitespace", { fg = c.bg_sel })
hi("SpecialKey", { fg = c.bg_sel })
hi("EndOfBuffer", { fg = c.bg })
hi("Directory", { fg = c.yellow })
hi("Title", { fg = c.green })
hi("ErrorMsg", { fg = c.error })
hi("WarningMsg", { fg = c.warn })
hi("ModeMsg", { fg = c.fg_muted })
hi("MoreMsg", { fg = c.green })
hi("Question", { fg = c.blue })

hi("StatusLine", { fg = c.fg_faint, bg = c.bg_dark })
hi("StatusLineNC", { fg = c.fg_faint, bg = c.bg_dark })
hi("TabLine", { fg = c.fg_muted, bg = c.bg_dark })
hi("TabLineSel", { fg = c.fg, bg = c.line_hl })
hi("TabLineFill", { bg = c.bg_dark })

hi("Pmenu", { fg = c.fg_dim, bg = c.bg_float })
hi("PmenuSel", { fg = c.fg, bg = c.bg_dark })
hi("PmenuSbar", { bg = c.bg_float })
hi("PmenuThumb", { bg = c.bg_sel })

-- Diffs / git
hi("DiffAdd", { bg = "#192b20" })
hi("DiffChange", { bg = "#253039" })
hi("DiffDelete", { bg = "#371c1c" })
hi("DiffText", { bg = "#1b3f26" })
hi("Added", { fg = c.added })
hi("Changed", { fg = c.modified })
hi("Removed", { fg = c.deleted })
hi("GitSignsAdd", { fg = c.added })
hi("GitSignsChange", { fg = c.modified })
hi("GitSignsDelete", { fg = c.deleted })

-- Base syntax
hi("Comment", { fg = c.comment, italic = true })
hi("Constant", { fg = c.blue })
hi("String", { fg = c.green })
hi("Character", { fg = c.green })
hi("Number", { fg = c.blue })
hi("Boolean", { fg = c.blue })
hi("Float", { fg = c.blue })
hi("Identifier", { fg = c.fg })
hi("Function", { fg = c.yellow })
hi("Statement", { fg = c.blue })
hi("Conditional", { fg = c.blue })
hi("Repeat", { fg = c.blue })
hi("Label", { fg = c.blue })
hi("Operator", { fg = c.blue })
hi("Keyword", { fg = c.blue })
hi("Exception", { fg = c.blue })
hi("PreProc", { fg = c.blue })
hi("Include", { fg = c.blue })
hi("Define", { fg = c.blue })
hi("Macro", { fg = c.blue })
hi("PreCondit", { fg = c.blue })
hi("Type", { fg = c.purple_soft })
hi("StorageClass", { fg = c.blue })
hi("Structure", { fg = c.purple_soft })
hi("Typedef", { fg = c.purple_soft })
hi("Special", { fg = c.purple })
hi("SpecialChar", { fg = c.blue })
hi("Tag", { fg = c.purple })
hi("Delimiter", { fg = c.punct })
hi("SpecialComment", { fg = c.comment, italic = true })
hi("Debug", { fg = c.error })
hi("Underlined", { fg = c.blue, underline = true })
hi("Ignore", { fg = c.fg_faint })
hi("Error", { fg = c.error })
hi("Todo", { fg = c.bg, bg = c.yellow, bold = true })

-- Diagnostics
hi("DiagnosticError", { fg = c.error })
hi("DiagnosticWarn", { fg = c.warn })
hi("DiagnosticInfo", { fg = c.purple })
hi("DiagnosticHint", { fg = c.fg_muted })
hi("DiagnosticUnnecessary", { fg = c.fg_faint })
hi("DiagnosticUnderlineError", { undercurl = true, sp = c.error })
hi("DiagnosticUnderlineWarn", { undercurl = true, sp = c.warn })
hi("DiagnosticUnderlineInfo", { undercurl = true, sp = c.purple })
hi("DiagnosticUnderlineHint", { undercurl = true, sp = c.fg_muted })

-- Treesitter
hi("@comment", { fg = c.comment, italic = true })
hi("@comment.documentation", { fg = c.comment, italic = true })
hi("@constant", { fg = c.blue })
hi("@constant.builtin", { fg = c.blue })
hi("@constant.macro", { fg = c.blue })
hi("@number", { fg = c.blue })
hi("@number.float", { fg = c.blue })
hi("@boolean", { fg = c.blue })
hi("@string", { fg = c.green })
hi("@string.escape", { fg = c.blue })
hi("@string.special", { fg = c.green_alt })
hi("@string.regexp", { fg = c.blue })
hi("@character", { fg = c.green })
hi("@variable", { fg = c.fg })
hi("@variable.builtin", { fg = c.purple_soft, italic = true })
hi("@variable.parameter", { fg = c.fg, italic = true })
hi("@variable.member", { fg = c.prop_alt })
hi("@property", { fg = c.prop_alt })
hi("@field", { fg = c.prop_alt })
hi("@function", { fg = c.yellow })
hi("@function.builtin", { fg = c.yellow })
hi("@function.call", { fg = c.yellow })
hi("@function.method", { fg = c.yellow })
hi("@function.method.call", { fg = c.yellow })
hi("@constructor", { fg = c.yellow })
hi("@keyword", { fg = c.blue })
hi("@keyword.function", { fg = c.blue })
hi("@keyword.operator", { fg = c.blue })
hi("@keyword.return", { fg = c.blue })
hi("@keyword.import", { fg = c.blue })
hi("@keyword.conditional", { fg = c.blue })
hi("@keyword.repeat", { fg = c.blue })
hi("@keyword.exception", { fg = c.blue })
hi("@operator", { fg = c.blue })
hi("@type", { fg = c.purple_soft })
hi("@type.builtin", { fg = c.purple_soft, italic = true })
hi("@type.definition", { fg = c.purple_soft })
hi("@module", { fg = c.fg })
hi("@namespace", { fg = c.fg })
hi("@punctuation.delimiter", { fg = c.punct })
hi("@punctuation.bracket", { fg = c.punct })
hi("@punctuation.special", { fg = c.purple })
hi("@label", { fg = c.yellow })

-- Markup (markdown)
hi("@markup.heading", { fg = c.green, bold = true })
hi("@markup.strong", { bold = true })
hi("@markup.italic", { italic = true })
hi("@markup.underline", { underline = true })
hi("@markup.link", { fg = c.blue, underline = true })
hi("@markup.link.url", { fg = c.blue, underline = true })
hi("@markup.raw", { fg = c.blue })
hi("@markup.list", { fg = c.punct })
hi("@markup.quote", { fg = c.comment, italic = true })

-- HTML / JSX
hi("@tag", { fg = c.purple })
hi("@tag.builtin", { fg = c.purple })
hi("@tag.attribute", { fg = c.yellow })
hi("@tag.delimiter", { fg = c.punct })
hi("@text", { fg = c.prop })

-- CSS (incl. Tailwind directives via @keyword)
hi("@property.css", { fg = c.prop_alt })
hi("@type.css", { fg = c.yellow })
hi("@string.css", { fg = c.green })
hi("@function.css", { fg = c.yellow })
hi("@keyword.css", { fg = c.blue })
hi("@tag.css", { fg = c.purple })
hi("@attribute.css", { fg = c.purple_soft, italic = true })

-- JSON
hi("@property.json", { fg = c.prop_alt })
hi("@string.json", { fg = c.green })

-- LSP semantic tokens
hi("@lsp.type.class", { fg = c.yellow })
hi("@lsp.type.function", { fg = c.yellow })
hi("@lsp.type.method", { fg = c.yellow })
hi("@lsp.type.property", { fg = c.prop_alt })
vim.api.nvim_set_hl(0, "@lsp.type.variable", { link = "@variable" })
hi("@lsp.type.parameter", { fg = c.fg, italic = true })
hi("@lsp.type.namespace", { fg = c.fg })
hi("@lsp.type.enum", { fg = c.purple_soft })
hi("@lsp.type.interface", { fg = c.purple_soft })
hi("@lsp.type.type", { fg = c.purple_soft })
hi("@lsp.type.keyword", { fg = c.blue })
hi("@lsp.type.string", { fg = c.green })
hi("@lsp.type.decorator", { fg = c.yellow })

hi("LspReferenceText", { bg = "#2f2f32" })
hi("LspReferenceRead", { bg = "#2f2f32" })
hi("LspReferenceWrite", { bg = "#2f2f32" })
hi("LspInlayHint", { fg = c.fg_faint, bg = c.line_hl, italic = true })

-- Telescope
hi("TelescopeNormal", { fg = c.fg_dim, bg = c.bg_dark })
hi("TelescopeBorder", { fg = c.bg_darker, bg = c.bg_dark })
hi("TelescopeSelection", { fg = c.fg, bg = c.gutter })
hi("TelescopeMatching", { fg = c.yellow, bold = true })
hi("TelescopePromptTitle", { fg = c.bg, bg = c.green })
hi("TelescopeResultsTitle", { fg = c.bg, bg = c.purple })
hi("TelescopePreviewTitle", { fg = c.bg, bg = c.yellow })

-- Which-key
hi("WhichKey", { fg = c.yellow })
hi("WhichKeyGroup", { fg = c.blue })
hi("WhichKeyDesc", { fg = c.fg_dim })
hi("WhichKeySeparator", { fg = c.fg_faint })
hi("WhichKeyFloat", { bg = c.bg_dark })

-- Neo-tree
hi("NeoTreeNormal", { fg = c.fg_muted, bg = c.bg_dark })
hi("NeoTreeNormalNC", { fg = c.fg_muted, bg = c.bg_dark })
hi("NeoTreeDirectoryName", { fg = c.fg_muted })
hi("NeoTreeDirectoryIcon", { fg = c.yellow })
hi("NeoTreeFileName", { fg = c.fg_muted })
hi("NeoTreeGitModified", { fg = c.modified })
hi("NeoTreeGitUntracked", { fg = c.fg_dim })
hi("NeoTreeIndentMarker", { fg = c.gutter })
hi("NeoTreeRootName", { fg = c.fg, bold = true })

-- Snacks dashboard
hi("SnacksDashboardHeader", { fg = c.purple })
hi("SnacksDashboardDesc", { fg = c.fg_dim })
hi("SnacksDashboardKey", { fg = c.yellow })
hi("SnacksDashboardIcon", { fg = c.green })
hi("SnacksDashboardFooter", { fg = c.fg_faint })
