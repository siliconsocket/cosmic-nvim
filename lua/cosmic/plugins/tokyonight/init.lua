local user_config = require('cosmic.core.user')
return {
  { -- color scheme
    'folke/tokyonight.nvim',
    lazy = false,
    config = function()
      local config = require('cosmic.plugins.tokyonight.config')
      require('tokyonight').setup(config)
      vim.cmd('color tokyonight')
      vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
      vim.cmd([[hi LineNr guibg=NONE ctermbg=NONE]])
      vim.cmd([[hi FloatTermNormal term=NONE guibg=NONE]])
      vim.cmd([[hi TelescopeNormal term=NONE guibg=NONE]])
      vim.cmd([[hi SignColumn term=NONE guibg=NONE]])
      vim.cmd([[hi FloatermBorder term=NONE guibg=NONE guifg=cyan]])
      vim.cmd([[hi TelescopeBorder term=NONE guibg=NONE guifg=cyan]])
    end,
    enabled = not vim.tbl_contains(user_config.disable_builtin_plugins, 'tokyonight'),
  },
}
