local default_config = require('cosmic.lsp.providers.defaults')
local config = require('cosmic.config')
local lsp_installer = require('nvim-lsp-installer')

lsp_installer.settings({
  ui = {
    keymaps = {
      -- Keymap to expand a server in the UI
      toggle_server_expand = 'i',
      -- Keymap to install a server
      install_server = '<CR>',
      -- Keymap to reinstall/update a server
      update_server = 'u',
      -- Keymap to uninstall a server
      uninstall_server = 'x',
    },
  },
})

-- initial default serverse
local requested_servers = {
  'eslint',
  'efm',
  'tsserver',
  'sumneko_lua',
  'jsonls',
  'cssls',
  'html',
}

-- get disabled servers from config
local disabled_servers = {}
if config.lsp and config.lsp.servers then
  for config_server, config_opt in pairs(config.lsp.servers) do
    if config_opt == false then
      for server in pairs(requested_servers) do
        if (requested_servers[server] == config_server) then
          table.insert(disabled_servers, requested_servers[server])
        end
      end
    end
  end
end

-- go through requested_servers and ensure installation
local lsp_installer_servers = require('nvim-lsp-installer.servers')
for server in pairs(requested_servers) do
  local requested_server = requested_servers[server]

  local ok, serv = lsp_installer_servers.get_server(requested_server)
  if ok then
    if not serv:is_installed() then
      serv:install()
    end
  end
end

-- print(vim.inspect(requested_servers))
-- print(vim.inspect(disabled_servers))

lsp_installer.on_server_ready(function(server)
  local opts = default_config

  opts.autostart = true
  if vim.tbl_contains(disabled_servers, server.name) then
    opts.autostart = false
  end

  if server.name == 'sumneko_lua' then
    opts = vim.tbl_deep_extend('force', opts, require('cosmic.lsp.providers.lua'))
  elseif server.name == 'tsserver' then
    opts = vim.tbl_deep_extend('force', opts, require('cosmic.lsp.providers.tsserver'))
  elseif server.name == 'efm' then
    opts = vim.tbl_deep_extend('force', opts, require('cosmic.lsp.providers.efm'))
  elseif server.name == 'jsonls' then
    opts = vim.tbl_deep_extend('force', opts, require('cosmic.lsp.providers.jsonls'))
  elseif server.name == 'eslint' then
    opts = vim.tbl_deep_extend('force', opts, require('cosmic.lsp.providers.eslint'))
  end

  -- This setup() function is exactly the same as lspconfig's setup function (:help lspconfig-quickstart)
  server:setup(opts)
  vim.cmd([[ do User LspAttachBuffers ]])
end)
