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
      vim.lsp.config["clangd"] = {
        cmd = { "clangd" },
        filetypes = { "c", "h" },
        capabilities = capabilities,
      }

      -- Enable servers
      vim.lsp.enable("lua_ls")
      vim.lsp.enable("clangd")
      vim.lsp.enable("jdtls")
    end
  },
}
