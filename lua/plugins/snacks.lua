-- ~/.config/nvim/lua/plugins/snacks.lua
return {
  "folke/snacks.nvim",
  opts = {
    -- Turn off snacks indent entirely: no scope highlight AND no static
    -- vertical indent-guide lines.
    indent = { enabled = false },
    picker = {
      sources = {
        explorer = {
          auto_close = false,
        },
      },
    },
  },
}
