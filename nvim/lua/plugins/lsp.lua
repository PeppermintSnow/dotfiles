return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Global
      vim.lsp.config('*', {
        capabilities = capabilities,
      })

      -- Servers 
      -- Installed from pacman: lua-language-server
      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            runtime = { version = "LuaJIT" },
          },
        },
      })
      -- Installed from pacman: clang
      vim.lsp.config("clangd", {
        filetypes = { "c", "h" }
      })
      -- Installed from pacman: rust-analyzer
      vim.lsp.config("rust_analyzer", {
        settings = {
          ['rust-analyzer'] = {
            diagnostics = {
              enable = false;
            }
          }
        }
      })
      -- Installed from pacman: bash-language-server
      vim.lsp.config("bashls", {})
      -- Installed from AUR/npm: vtsls
      vim.lsp.config("vtsls", {})
      -- Installed from pacman: jdtls
      vim.lsp.config("jdtls", {})
      -- Installed from pacman: python-lsp-server
      vim.lsp.config("pylsp", {})
      -- Installed from flutter's tarball
      vim.lsp.config("dartls", {})
      -- Installed from npm: intelephense
      vim.lsp.config("intelephense", {
        root_markers = { "artisan" }
      })

      -- Enable servers
      vim.lsp.enable({
        "lua_ls",
        "clangd",
        "rust_analyzer",
        "bashls",
        "vtsls",
        "jdtls",
        "pylsp",
        "dartls",
        "intelephense"
      })
    end
  },
}
