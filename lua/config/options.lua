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

-- Auto-open the snacks file-explorer sidebar on startup, rooted at the directory
-- nvim was launched from (cwd), with focus kept in the editor/dashboard.
-- Registered here (loaded before VimEnter in all launch modes) rather than in
-- autocmds.lua, which loads on VeryLazy -- too late for a VimEnter autocmd.
vim.api.nvim_create_autocmd("VimEnter", {
  group = vim.api.nvim_create_augroup("open_explorer_on_start", { clear = true }),
  desc = "Open file explorer sidebar (cwd) on startup",
  callback = function()
    if vim.bo.filetype == "gitcommit" or vim.bo.filetype == "gitrebase" or vim.wo.diff then
      return
    end
    if vim.fn.argc() > 0 and vim.fn.isdirectory(vim.fn.argv(0)) == 1 then
      return
    end

    vim.schedule(function()
      local win = vim.api.nvim_get_current_win()
      local ok = pcall(function()
        require("snacks").explorer.open({ cwd = vim.fn.getcwd(), enter = false })
      end)
      if not ok then return end
      vim.schedule(function()
        if vim.api.nvim_win_is_valid(win) then
          pcall(vim.api.nvim_set_current_win, win)
        end
      end)
    end)
  end,
})
