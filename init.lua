require 'core.options'
require 'core.keymaps'
require 'core.snippets'

-- Set up the Lazy plugin manager
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then error('Error cloning lazy.nvim:\n' .. out) end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

-- Set up plugins
require('lazy').setup {
  require 'kickstart.plugins.indent_line',
  require 'kickstart.plugins.lint',
  require 'kickstart.plugins.gitsigns',
  require 'kickstart.plugins.neo-tree',
  require 'custom.plugins.autoformat',
  require 'custom.plugins.colortheme',
  require 'custom.plugins.liveserver',
  require 'custom.plugins.auto-completion',
  require 'custom.plugins.lsp',
  require 'custom.plugins.telescope',
  require 'custom.plugins.mix',
  require 'custom.plugins.treesitter',
  require 'custom.plugins.whichkey',
  require 'custom.plugins.lazygit',
  require 'custom.plugins.lualine',
}
