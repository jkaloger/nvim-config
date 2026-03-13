return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup {
      options = {
        theme = 'auto',
        icons_enabled = true,
        transparent = false,
        component_separators = ' ',
        section_separators = '',
      },
      sections = {
        lualine_x = {
          {
            'macro',
            fmt = function()
              local reg = vim.fn.reg_recording()
              if reg ~= "" then
                return "Recording @" .. reg
              end
              return nil
            end,
            color = { fg = "#ff9e64" },
            draw_empty = false,
          },
          'encoding', 'fileformat', 'filetype'
        }
      }
    }
  end
}
