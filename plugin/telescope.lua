require('telescope').setup({
  extentions = {
    fzf = {
      case_mode = 'smart_case',
      fuzzy = true,
    }
  }
})

require('telescope').load_extension('fzf')
