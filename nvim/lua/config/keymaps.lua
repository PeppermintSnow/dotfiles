-- Telescope keybinds
local telescope = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescope.find_files, { desc = "Telescope find files" } )
vim.keymap.set("n", "<leader>fg", telescope.live_grep, { desc = "Telescope live grep" } )

-- Custom HJKL motion in insert mode
vim.keymap.set("i", "<C-h>", "<Left>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-j>", "<Down>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-k>", "<Up>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-l>", "<Right>", { noremap = true, silent = true })
