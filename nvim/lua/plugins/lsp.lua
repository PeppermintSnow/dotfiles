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
      -- Enable servers
      vim.lsp.enable("lua_ls")
      vim.lsp.enable("c_ls")
      vim.lsp.enable("ts_ls")
      vim.lsp.enable("java_ls")
    end
  },
}
