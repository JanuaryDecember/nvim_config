return {
  {
    "seblyng/roslyn.nvim",
    ft = "cs",
    ---@module 'roslyn.config'
    ---@type RoslynNvimConfig
    opts = {
      -- your configuration comes here; leave empty for default settings
    },
  },
  {
    "mason-org/mason.nvim",
    opts = {

      registries = {
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry",
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      format_on_save = function(bufnr)
        return {
          timeout_ms = 500,
          lsp_fallback = false,
        }
      end,
      formatters_by_ft = {
        javascript = { "prettierd", "prettier", stop_after_first = true },
        cs = { "csharpier" },
      },
      formatters = {
        csharpier = {
          command = vim.fn.stdpath("data") .. "/mason/bin/csharpier",
          args = { "format", "$FILENAME" },
          stdin = false,
          require_cwd = false,
        },
      },
    },
  },
}
