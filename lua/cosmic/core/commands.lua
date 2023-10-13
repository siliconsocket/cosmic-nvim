local augroup_name = 'CosmicNvim'
local group = vim.api.nvim_create_augroup(augroup_name, { clear = true })

vim.api.nvim_create_autocmd('VimResized', {
  command = 'tabdo wincmd =',
  group = group,
})

vim.cmd([[
  command! CosmicUpdate lua require('cosmic.utils.cosmic').update()
]])

vim.api.nvim_exec([[
let g:tmpl_search_paths = ['~/.config/nvim/lua/cosmic/config/templates']
]], false)