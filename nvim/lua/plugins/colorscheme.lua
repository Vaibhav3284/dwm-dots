return {
  "neanias/everforest-nvim",
  version = false,
 -- lazy = false,
  priority = 1000, -- make sure to load this before all the other start plugins
  -- Optional; default configuration will be used if setup isn't called.
  config = function()
    require("everforest").setup({
	      transparent_background_level = 1,
      -- Your config here
    })
    vim.cmd([[colorscheme everforest]])
  end,
}
