return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Servers config
      -- Installed from pacman: lua-language-server
      vim.lsp.config["lua_ls"] = {
        cmd = { "lua-language-server" },
        filetypes = { "lua" },
        rootmarkers = { { ".luarc.json", ".luarc.jsonc" }, ".git" },
        settings = {
          Lua = {
            runtime = {
              version = "LuaJIT",
            },
          },
        },
        capabilities = capabilities
      }
      -- Installed from pacman: clang
      vim.lsp.config["c_ls"] = {
        cmd = { "clangd" },
        filetypes = { "c", "h" },
        root_markers = { ".clangd", ".clang-tidy", ".clang-format", "compile_commands.json", "compile_flags.txt", "configure.ac", ".git" },
        capabilities = capabilities
      }
      -- Installed from AUR/npm: vtsls
      vim.lsp.config["ts_ls"] = {
        cmd = { "vtsls", "--stdio" },
        filetypes = { "typescript", "javascript", "typescriptreact", "javascriptreact" },
        root_markers = { { "package-lock.json", "yarn.lock", "pnpm-lock.yaml" }, ".git" },
        capabilities = capabilities
      }
      -- Installed from pacman: jdtls
      vim.lsp.config["java_ls"] = {
        cmd = { "jdtls" },
        filetypes = { "java" },
        root_markers = { { "mvnw", "gradlew", "settings.gradle", "settings.gradle.kts", ".git" }, { "build.xml", "pom.xml", "build.gradle", "build.gradle.kts" } },
        capabilities = capabilities

      }
      -- Installed from pacman: bash-language-server
      vim.lsp.config["bash_ls"] = {
        cmd = { "bash-language-server", "start" },
        filetypes = { "bash", "sh" },
        root_markers = { ".git" },
        capabilities = capabilities
      }
      -- Installed from pacman: python-lsp-server
      vim.lsp.config["python_ls"] = {
        cmd = { "pylsp" },
        filetypes = { "python" },
        root_markers = { "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", "Pipfile", ".git" },
        capabilities = capabilities
      }

      -- Enable servers
      vim.lsp.enable("lua_ls")
      vim.lsp.enable("c_ls")
      vim.lsp.enable("ts_ls")
      vim.lsp.enable("java_ls")
      vim.lsp.enable("bash_ls")
      vim.lsp.enable("python_ls")
    end
  },
}
