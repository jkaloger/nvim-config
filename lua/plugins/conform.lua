return {
  'stevearc/conform.nvim',
  opts = {},
  config = function()
    require('conform').setup({
      formatters_by_ft = {
        javascript = { { "prettierd", "prettier" }, "eslint_d" },
        typescript = { { "prettierd", "prettier" }, "eslint_d" },
        typescriptreact = { { "prettierd", "prettier" }, "eslint_d" },
        javascriptreact = { { "prettierd", "prettier" }, "eslint_d" },
        astro = { { "prettier" }, "eslint_d" },
        json = { { "prettierd", "prettier" } },
        html = { { "prettierd", "prettier" } },
        css = { { "prettierd", "prettier" } },
        scss = { { "prettierd", "prettier" } },
        markdown = { { "prettierd", "prettier" } },
      },
      format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_fallback = true,
      },
    })
  end
}
