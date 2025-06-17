return {
  {
    'Mofiqul/dracula.nvim',
    name = 'dracula',
    lazy = false,
    priority = 1000,
    config = function()
      ---@type dracula
      local dracula = require 'dracula'

      dracula.setup {
        styles = {
          Type = {},
          Function = {},
          Parameter = {},
          Property = {},
          Comment = {},
          String = {},
          Keyword = {},
          Identifier = {},
          Constant = {},
        },
        transparent = true,
        on_colors = function(colors, color)
          ---@type dracula.palette
          return {
            -- override or create new colors
            -- mycolor = '#ffffff',
            -- mycolor = 0xffffff,
          }
        end,
        -- on_highlights = function(colors, color)
        --   ---@type dracula.highlights
        --   return {
        --     ---@type vim.api.keyset.highlight
        --     Normal = { fg = colors.mycolor },
        --   }
        -- end,
        plugins = {
          ['nvim-treesitter'] = true,
          -- ['rainbow-delimiters'] = true,
          ['nvim-lspconfig'] = true,
          -- ['nvim-navic'] = true,
          ['nvim-cmp'] = true,
          ['indent-blankline.nvim'] = true,
          ['neo-tree.nvim'] = true,
          -- ['nvim-tree.lua'] = true,
          ['which-key.nvim'] = true,
          -- ['dashboard-nvim'] = true,
          ['gitsigns.nvim'] = true,
          ['neogit'] = true,
          ['todo-comments.nvim'] = true,
          ['lazy.nvim'] = true,
          ['telescope.nvim'] = true,
          ['noice.nvim'] = true,
          ['hop.nvim'] = true,
          ['mini.statusline'] = true,
          ['mini.tabline'] = true,
          ['mini.starter'] = true,
          ['mini.cursorword'] = true,
          ['bufferline.nvim'] = true,
        },
      }
      -- vim.cmd.colorscheme 'dracula'
      -- vim.cmd.colorscheme 'dracula-soft'
    end,
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false,
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'catppuccin-mocha'
    end,
  },
}
