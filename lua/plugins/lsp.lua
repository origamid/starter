-- ~/.config/nvim/lua/plugins/lsp.lua
return {
  "neovim/nvim-lspconfig",
  opts = {
    -- Disable the "ghost" inline type / parameter-name hints (LSP inlay hints).
    inlay_hints = { enabled = false },
    servers = {
      tailwindcss = {
        settings = {
          tailwindCSS = {
            lint = {
              -- Stop nagging that one class could be written another way
              -- (e.g. "these utilities apply the same CSS property").
              cssConflict = "ignore",
            },
          },
        },
      },
    },
  },
}
