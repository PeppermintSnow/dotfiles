return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Servers config
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
      vim.lsp.config["c_ls"] = {
        cmd = { "clangd" },
        filetypes = { "c", "h" },
        capabilities = capabilities,
      }
      vim.lsp.config["ts_ls"] = {
        cmd = { "vtsls", "--stdio" },
      }
      -- Enable servers
      vim.lsp.enable("lua_ls")
      vim.lsp.enable("c_ls")
      vim.lsp.enable("ts_ls")
      vim.lsp.enable("jdtls")
    end
  },
}
