return {
  'nvim-lualine/lualine.nvim',
  config = function()
    -- Load Tokyo Night theme and make it transparent
    local tokyonight_transparent = require('lualine.themes.tokyonight')
    for _, mode in pairs(tokyonight_transparent) do
      for section_name, section in pairs(mode) do
        if section_name ~= "a" then
          section.bg = 'NONE'
        end
      end
    end

    require('lualine').setup {
      options = {
        theme = tokyonight_transparent,
        icons_enabled = true,
        transparent = true,
        component_separators = ' ',
        section_separators = '',
      }
    }
  end
}
