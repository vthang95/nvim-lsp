require('telescope').setup({
  defaults = {
    live_grep_args = {
      file_ignore_patterns = { "yarn.lock" }
    }
  },
  extentions = {
    fzf = {
      case_mode = 'smart_case',
      fuzzy = true,
    }
  }
})

require('telescope').load_extension('fzf')
