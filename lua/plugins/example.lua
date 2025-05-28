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
      formatters_by_ft = {
        javascript = { "prettierd" },
        typescript = { "prettierd" },
        typescriptreact = { "prettierd" },
        cs = { "csharpier" },
        sql = { "pgformatter" },
        json = { "prettierd" },
        html = { "prettierd" },
        css = { "prettierd" },
      },
      formatters = {
        prettierd = {
          require_cwd = true,
        },
        csharpier = {
          command = vim.fn.stdpath("data") .. "/mason/bin/csharpier",
          args = { "format", "$FILENAME" },
          stdin = false,
          require_cwd = false,
        },
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "tsx",
        "typescript",
        "javascript",
        "html",
        "css",
        "json",
      },
    },
  },
}
