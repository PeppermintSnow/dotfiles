return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = "main",
    build = ":TSUpdate",
    opts = {
      highlight = { enable = true },
      ensure_installed = {
        "bash",
        "c",
        "diff",
        "html",
        "javascript",
        "jsx",
        "typescript",
        "tsx",
        "json",
        "lua",
        "markdown",
        "python",
        "regex",
        "toml",
        "yaml",
        "xml",
        "php",
        "java",
      }
    }
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    opts = {
      separator = "›",
    },
  }
}
