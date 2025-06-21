return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",

    -- adapters
    "marilari88/neotest-vitest",
  },
  config = function()
    require("neotest").setup({
      diagnostic = {
        enabled = true,
      },
      adapters = {
        require("neotest-vitest"),
      }
    })
  end
}
