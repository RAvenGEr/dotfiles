return {
  {
    'EdenEast/nightfox.nvim',
    priority = 900,
    init = function()
      vim.cmd.colorscheme 'duskfox'
    end,
  },
}