return {
  "elixir-tools/elixir-tools.nvim",
  version = "*",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local elixir = require("elixir")

    elixir.setup({
      nextls = { enable = false },
      elixirls = {
        enable = true,
      },
      projectionist = {
        enable = true,
      },
    })
  end,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
}
