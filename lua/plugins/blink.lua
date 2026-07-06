return {
  "saghen/blink.cmp",
  opts = {
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
      providers = {
        -- Push language-server suggestions to the top
        lsp = { score_offset = 100 },
        path = { score_offset = 90 },
        snippets = { score_offset = 80 },
        -- Quiet the buffer-word noise: only kick in after a few chars,
        -- rank it last, and cap how many it can add
        buffer = {
          score_offset = -20,
          min_keyword_length = 4,
          max_items = 5,
        },
      },
    },
  },
}
