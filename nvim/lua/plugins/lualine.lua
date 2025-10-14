local tempus_warp_poimandres_theme = {
  normal = {
    a = { fg = '#001514', bg = '#5FB3A1', gui = 'bold' },
    b = { fg = '#5DE4C7', bg = '#002F2C' },
    c = { fg = '#42675A', bg = 'NONE' }
  },
  insert = {
    a = { fg = '#001514', bg = '#5DE4C7', gui = 'bold' },
  },
  visual = {
    a = { fg = '#001514', bg = '#FAE4FC', gui = 'bold' },
  },
  command = {
    a = { fg = '#001514', bg = '#89DDFF', gui = 'bold' }
  },
  replace = {
    a = { fg = '#001514', bg = '#FFFAC2', gui = 'bold' }
  }
}

return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup({
      options = {
        theme = tempus_warp_poimandres_theme,
        component_separators = '',
        section_separators = { left = '', right = '' },
      },
      sections = {
        lualine_a = { { 'mode', separator = { left = ' ' }, right_padding = 2 } },
        lualine_b = {
          {
            'filename',
            symbols = {
              modified = '',
              readonlu = '',
              unnamed = '',
              newfile = '󰈔',
            }
          },
          'branch',
          {
            'diagnostics',
            colored = false,
            always_visible = true
          }
        },
        lualine_c = { '%=' },
        lualine_x = {},
        lualine_y = { { 'filetype', colored = false }, 'progress' },
        lualine_z = { { 'location', separator = { right = ' ' }, left_padding = 2 } },
      },
      inactive_sections = {
        lualine_a = { 'filename' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' },
      },
      tabline = {},
      extensions = {},
    })
  end
}
