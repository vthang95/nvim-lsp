vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup {
  ignore_buffer_on_setup = true,
  filters = {
    custom = { ".cs.meta$" }
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    debounce_delay = 50,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  renderer = {
    root_folder_modifier = ":t",
    icons = {
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_open = "",
          arrow_closed = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "",
          staged = "",
          unmerged = "",
          renamed = "➜",
          untracked = "U",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  }
}

vim.api.nvim_set_keymap("n", "<C-e>", "<cmd>lua require'nvim-tree'.toggle()<CR>", { noremap = true, silent = true })

