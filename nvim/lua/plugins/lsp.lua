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
      }
      -- Installed from pacman: clang
      vim.lsp.config["c_ls"] = {
        cmd = { "clangd" },
        filetypes = { "c", "h" },
        capabilities = capabilities,
      }
      -- Installed from AUR/npm: vtsls
      vim.lsp.config["ts_ls"] = {
        cmd = { "vtsls", "--stdio" },
      }
      -- Installed from pacman: jdtls
      vim.lsp.config["java_ls"] = {
        cmd = { "jdtls" }
      }
      -- Installed from pacman: bash-language-server
      vim.lsp.config["bash_ls"] = {
        cmd = { "bash-language-server", "start" }
      }
      -- Installed from pacman: python-lsp-server
      vim.lsp.config["python_ls"] = {
        cmd = { "pylsp" }
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
