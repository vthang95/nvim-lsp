require('lualine').setup({
  options = {
    theme = 'onedark'
  },
  sections = {
    lualine_a = {
      {
        'filename',
        file_status = true,
        path = 1,

        symbols = {
          modified = ' ●',
          readonly = '[x]',
          unnamed = '[No Name]',
          newfile = '[New]',
        }
      },
    },
    lualine_x = {'filetype'}
  },
  tabline = {
    lualine_a = {
      {
        'tabs',
        mode = 2,
     }
    },
    lualine_b = {
      {
        'filename',
        file_status = true,
        path = 1,
        symbols = {
          modified = ' ●',
          readonly = '[x]',
          unnamed = '[No Name]',
          newfile = '[New]',
        }
      },
    },
  }
})
