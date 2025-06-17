return {
  'NOSDuco/remote-sshfs.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim' },
  config = true,
  opts = {
    ui = {
      confirm = {
        connect = false,
      },
    },
  },
}
