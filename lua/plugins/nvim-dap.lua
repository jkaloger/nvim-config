return {
  "mfussenegger/nvim-dap",
  dependencies = {
    -- Virtual text showing variable values
    "theHamsta/nvim-dap-virtual-text",
    -- Node.js specific adapter
    "mxsdev/nvim-dap-vscode-js",
    -- DAP UI
    "rcarriga/nvim-dap-ui"
  },
  config = function()
    local dap = require("dap")

    dap.adapters = { "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" }

    dap.adapters["pwa-node"] = {
      type = "server",
      host = "localhost",
      port = "${port}",
      executable = {
        command = "node",
        args = {
          vim.fn.stdpath("data") .. "/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js",
          "${port}"
        },
      }
    }

    require("nvim-dap-virtual-text").setup({
      enabled = true
    })

    require("dapui").setup()

    -- TypeScript/JavaScript configurations
    for _, language in ipairs({ "typescript", "javascript", "typescriptreact", "javascriptreact" }) do
      ---@type dap.Configuration[]
      dap.configurations[language] = {
        -- Attach to running nodejs process
        {
          type = "pwa-node",
          request = "attach",
          name = "Attach to process on port 9229",
          port = 9229,
          skipFiles = { "<node_internals>/**" },
        },
      }
    end
  end,
}
