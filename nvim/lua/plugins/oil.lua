return{
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local oil = require("oil")
    vim.keymap.set('n','<leader>fs',oil.toggle_float,{
        desc="Open file explorer",

})
    oil.setup(
      {
          view_options = {
              show_hidden = true,
          }
      })
    end,
}
