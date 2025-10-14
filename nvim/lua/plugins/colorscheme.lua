return {
	'olivercederborg/poimandres.nvim',
	pcalllazy = false,
	priority = 1000,
	config = function()
		require('poimandres').setup({
      disable_background = true,
      highlight_groups = {
        CursorLine = { bg = "NONE" },
        CursorLineNr = { bg = "NONE" },
        CursorLineColumn = { bg = "NONE" },
        StatusLine = { bg = "NONE" },
        LazyNormal = { fg = "#ADD7FF", bg = "#001514" },
        LazyProgress = { fg = "#5DE4C7", bg = "#001514" },
        Pmenu = { fg = "#767C9D", bg = "NONE" },
        PmenuSel = { fg = "#5DE4C7", bg = "#002F2C" },
        PmenuThumb = { bg = "#5DE4C7" },
        PmenuSbar = { bg = "NONE" },
        PmenuMatchSel = { bg = "NONE" },
        FloatBorder = { fg = "#5DE4C7" },
        TreeSitterContext = { fg = "#5DE4C7", bg = "NONE" },
        TreeSitterContextLineNumber = { fg = "#5FB3A1" },
        TreeSitterContextLineNumberBottom = { fg = "#5DE4C7" },
        SnacksIndentScope = { fg = "#5DE4C7" },
      }
    })

		vim.cmd("colorscheme poimandres")
	end
}
