return {

  "nvim-treesitter/nvim-treesitter",

  event = "UIEnter",

  build = ":TSUpdate",
  main = "nvim-treesitter.configs",
  
  config = function()

    local success, treesitter = pcall(require, "nvim-treesitter.configs")
    if not success then
      vim.notify("Failed to load plugin: treesitter")
      return
    end
    require 'nvim-treesitter.install'.compilers = { "clang", "gcc" }
    treesitter.setup {

      ensure_installed = { "lua", "python" },
      sync_install = true,
      ignore_install = {},

      highlight = {
        enable = true,
        disable = function(_, bufnr)
          return vim.api.nvim_buf_line_count(bufnr) > 2000
        end,
      },

      indent = { enable = true },

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "gnn",
          node_incremental = "grn",
          scope_incremental = "grc",
          node_decremental = "grm",
        },
      },

    }

    vim.g._ts_force_sync_parsing = true

  end

}
