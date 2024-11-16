return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = false

    vim.keymap.set('n', '<A-,>', '<Cmd>BufferPrevious<CR>', { desc = 'Previous Buffer' })
    vim.keymap.set('n', '<A-.>', '<Cmd>BufferNext<CR>', { desc = 'Next Buffer' })
    -- Re-order to previous/next
    vim.keymap.set('n', '<A-h>', '<Cmd>BufferMovePrevious<CR>', { desc = 'Move Buffer Left' })
    vim.keymap.set('n', '<A-l>', '<Cmd>BufferMoveNext<CR>', { desc = 'Move Buffer Right' })
    -- Goto buffer in position...
    vim.keymap.set('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', { desc = 'Goto  Buffer' })
    vim.keymap.set('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', { desc = 'Goto  Buffer' })
    vim.keymap.set('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', { desc = 'Goto  Buffer' })
    vim.keymap.set('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', { desc = 'Goto  Buffer' })
    vim.keymap.set('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', { desc = 'Goto  Buffer' })
    vim.keymap.set('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', { desc = 'Goto  Buffer' })
    vim.keymap.set('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', { desc = 'Goto  Buffer' })
    vim.keymap.set('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', { desc = 'Goto  Buffer' })
    vim.keymap.set('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', { desc = 'Goto  Buffer' })
    vim.keymap.set('n', '<A-0>', '<Cmd>BufferLast<CR>', { desc = 'Last Buffer' })
    -- Pin/unpin buffer
    vim.keymap.set('n', '<A-p>', '<Cmd>BufferPin<CR>', { desc = 'Pin Buffer' })
    -- Goto pinned/unpinned buffer
    --                 :BufferGotoPinned
    --                 :BufferGotoUnpinned
    -- Close buffer
    vim.keymap.set('n', '<A-c>', '<Cmd>BufferClose<CR>', { desc = 'Close Buffer' })
  end,
  opts = {
    -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
    animation = false,
  },
  version = '^1.0.0', -- optional: only update when a new 1.x version is released
}
