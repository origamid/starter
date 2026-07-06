-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Reduce per-move repaint cost (navigation lag on CPU-rendered terminals like iTerm2).
-- relativenumber renumbers every visible line on each cursor move; cursorline repaints
-- the current line. Turning both off makes j/k and scrolling smoother.
vim.opt.relativenumber = false
vim.opt.cursorline = false

-- Wrap lines that exceed the terminal width, breaking at word boundaries
-- (not mid-word) and keeping wrapped lines visually indented.
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true

-- No swap files -> no "found a swap file" (E325) prompt when a file is already
-- open elsewhere or left over from a crash. Trade-off: no crash recovery for
-- unsaved buffers (persistent undo history is kept separately and unaffected).
vim.opt.swapfile = false

-- Stop highlighting syntax past this column on a single line. Very long lines
-- (minified JS, huge Tailwind class strings, long JSON values) are the main
-- cause of per-move repaint lag on CPU-rendered terminals; snacks' bigfile
-- handler only covers whole large files, not one long line in a normal file.
vim.opt.synmaxcol = 300

-- Disable the language-host providers we don't use. Neovim otherwise probes
-- for each interpreter at startup (spawning processes) to support legacy
-- remote plugins. This config is JS/TS/CSS/JSON/Markdown; LSP servers and
-- tools like Prettier spawn Node on their own and are unaffected by this.
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_python3_provider = 0
