return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = "main",
    build = ":TSUpdate",
    opts = {
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = true
      },
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
        "dart"
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
