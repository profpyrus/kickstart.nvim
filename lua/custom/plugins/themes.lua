return {
  {
    'scottmckendry/cyberdream.nvim',
    lazy = false,
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      -- vim.cmd.colorscheme 'cyberdream'
      -- You can configure highlights by doing something like:
      -- vim.cmd.hi 'Comment gui=none'
    end,
    opts = {
      -- Enable transparent background
      transparent = true,

      -- Enable italics comments
      italic_comments = false,

      -- Replace all fillchars with ' ' for the ultimate clean look
      hide_fillchars = false,

      -- Modern borderless telescope theme - also applies to fzf-lua
      borderless_telescope = false,

      -- Set terminal colors used in `:terminal`
      terminal_colors = true,

      -- Improve start up time by caching highlights. Generate cache with :CyberdreamBuildCache and clear with :CyberdreamClearCache
      cache = false,

      theme = {
        variant = 'default', -- use "light" for the light variant. Also accepts "auto" to set dark or light colors based on the current value of `vim.o.background`
        saturation = 1, -- accepts a value between 0 and 1. 0 will be fully desaturated (greyscale) and 1 will be the full color (default)
        highlights = {
          -- Highlight groups to override, adding new groups is also possible
          -- See `:h highlight-groups` for a list of highlight groups or run `:hi` to see all groups and their current values

          -- Example:
          -- Comment = { fg = "#696969", bg = "NONE", italic = true },

          -- Complete list can be found in `lua/cyberdream/theme.lua`
        },

        -- Override a highlight group entirely using the color palette
        -- overrides = function(colors) -- NOTE: This function nullifies the `highlights` option
        --     -- Example:
        --     return {
        --         Comment = { fg = colors.green, bg = "NONE", italic = true },
        --         ["@property"] = { fg = colors.magenta, bold = true },
        --     }
        -- end,

        -- Override a color entirely
        -- colors = {
        --     -- For a list of colors see `lua/cyberdream/colours.lua`
        --     -- Example:
        --     bg = "#000000",
        --     green = "#00ff00",
        --     magenta = "#ff00ff",
        -- },
      },

      -- Disable or enable colorscheme extensions
      -- extensions = {
      --     telescope = true,
      --     notify = true,
      --     mini = true,
      -- },
    },
  },
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
      vim.cmd.colorscheme 'dracula'
      -- vim.cmd.colorscheme 'dracula-soft'
    end,
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    lazy = false,
    priority = 1000,
    init = function()
      -- vim.cmd.colorscheme 'rose-pine'
    end,
  },
  {
    'folke/tokyonight.nvim',
    name = 'tokyonight',
    lazy = false,
    priority = 1000,
    init = function()
      -- vim.cmd.colorscheme 'tokyonight'
    end,
  },
}
