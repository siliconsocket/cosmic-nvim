local cosmic_modules = {
  'cosmic.core.disabled',
  'cosmic.core.editor',
  'cosmic.core.pluginsInit',
  'cosmic.lsp',
  'cosmic.core.commands',
  'cosmic.core.mappings',
  'cosmic.config.editor',
}

-- set up lazy.nvim to install plugins
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    '--single-branch',
    'https://github.com/folke/lazy.nvim.git',
    lazypath,
  })
end
vim.opt.runtimepath:prepend(lazypath)

for _, mod in ipairs(cosmic_modules) do
  local ok, err = pcall(require, mod)
  if not ok and not mod:find('cosmic.config') then
    error(('Error loading %s...\n\n%s'):format(mod, err))
  end
end
