return {
  'G00380316/live-server.nvim',
  lazy = false, -- Recommended to ensure VimLeave cleanup always runs
  config = function()
    require('live_server').setup {
      browser_sync_port = 3000,
      live_server_port = 8080,
      files_to_watch = '"*.html, *.css, *.js"',
      auto_open_browser = true, -- Set to false to disable
    }
  end,
}
