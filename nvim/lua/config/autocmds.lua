-- Conditional tab spacing based on filetype
vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "javascript",
    "typescript",
    "javascriptreact",
    "typescriptreact",
    "php",
    "lua",
    "sass",
    "scss",
    "css",
    "html",
    "yaml",
    "json"
  },
  callback = function()
    vim.bo.shiftwidth = 2
    vim.bo.tabstop = 2
    vim.bo.softtabstop = 2
  end
})
