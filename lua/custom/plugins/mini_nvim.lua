return {
  'nvim-mini/mini.nvim',
  version = false,

  config = function()
    require('mini.surround').setup {
      mapping = {
        add = 's',
        delete = 'sd',
        find = 'sf',
        find_left = 'sF',
        highlight = 'sh',
        replace = 'sr',
      },
    }
  end,
}
