local navic = require("nvim-navic")

navic.setup {
  icons = {
    File          = " ",
    Module        = " ",
    Namespace     = " ",
    Package       = " ",
    Class         = " ",
    Method        = " ",
    Property      = " ",
    Field         = " ",
    Constructor   = " ",
    Enum          = "練",
    Interface     = "練",
    Function      = " ",
    Variable      = " ",
    Constant      = " ",
    String        = " ",
    Number        = " ",
    Boolean       = "◩ ",
    Array         = " ",
    Object        = " ",
    Key           = " ",
    Null          = "ﳠ ",
    EnumMember    = " ",
    Struct        = " ",
    Event         = " ",
    Operator      = " ",
    TypeParameter = " ",
  },
  highlight = false,
  separator = " > ",
  depth_limit = 0,
  depth_limit_indicator = "..",
}

require('lualine').setup({
  options = {
    theme = 'onedark'
  },
  sections = {
    lualine_a = {
      {
        'mode',
        show_modified_status = true, -- Shows indicator when the buffer is modified.
      },
      {
        'filename',
        file_status = true,
        symbols = {
          modified = ' ●',      -- Text to show when the file is modified.
          readonly = '[x]',      -- Text to show when the file is non-modifiable or readonly.
          unnamed = '[No Name]', -- Text to show for unnamed buffers.
          newfile = '[New]',     -- Text to show for new created file before first writting
        }
      }
    },
    lualine_c = {
      { navic.get_location, cond = navic.is_available },
    },
  },
  tabline = {
    lualine_b = {
      {
        'buffers',
        mode = 2,
        show_filename_only = true,   -- Shows shortened relative path when set to false.
        hide_filename_extension = false,   -- Hide filename extension when set to true.
        show_modified_status = true, -- Shows indicator when the buffer is modified.
        symbols = {
          modified = ' ●',      -- Text to show when the buffer is modified
          alternate_file = '#', -- Text to show to identify the alternate file
          directory =  '',     -- Text to show when the buffer is a directory
        },
        filetype_names = {
          TelescopePrompt = 'Telescope',
          dashboard = 'Dashboard',
          packer = 'Packer',
          fzf = 'FZF',
          alpha = 'Alpha'
        }
      }
    },
    lualine_a = {
      'tabs'
    },
    lualine_c = {},
    lualine_d = {},
  }
})

