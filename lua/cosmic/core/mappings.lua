local map = require('cosmic.utils').map

-- save and exit
map('n', 'Ñ', '<esc><cmd>noa w<cr>', {noremap = true, silent = true})
map('i', 'ññ', '<esc>', {noremap = true, silent = true})
-- Windows split and move
map('n', 'ss', '<cmd>split<cr><C-w>j', {noremap = true, silent = true})
map('n', 'sv', '<cmd>vsplit<cr><C-w>l', {noremap = true, silent = true})
map('n', 'sh', '<C-w>h', {})
map('n', 'sk', '<C-w>k', {})
map('n', 'sj', '<C-w>j', {})
map('n', 'sl', '<C-w>l', {})
-- Clear search highlight
map('n', 'sc', '<cmd>nohl<cr>', {noremap = true, silent = true})
-- Clear search highlight
map('n', 'tc', '<cmd>ColorizerToggle<cr>', {noremap = true, silent = true})
-- Select all
map('n', '<leader>a', 'gg<S-v>G', {noremap = true})
-- Eslint_d fix
--map('n', '<leader>i', '<cmd>lua vim.lsp.buf.formatting_seq_sync(nil, 7000)<cr>', {noremap = true})
map('n', '<leader>i', '<cmd>lua vim.lsp.buf.format(nil, 7000)<cr>', {noremap = true})
map('n', '<leader>.', '<cmd>lua vim.lsp.buf.code_action()<cr>', {noremap = true})
map('n', '<leader>c', '<cmd>lua require("logsitter").log()<cr>', {noremap = true})
map('n', '<leader>k', '<cmd>lua vim.diagnostic.goto_next()<cr>', {})
map('n', '<leader>j', '<cmd>lua vim.diagnostic.goto_prev()<cr>', {})
map('n', '<leader>g', '<cmd>lua vim.diagnostic.open_float(nil, { scope = "line", })<cr>', {})
-- Barbar tabs
-- Move to previous/next
map('n', 'dh', ':bprev<cr>', { desc = 'Prev buffer' })
map('n', 'dl', ':bnext<cr>', { desc = 'Next buffer' })
-- Re-order to previous/next
map('n', 'dj', '<cmd>BufferMovePrevious<cr>', {})
map('n', 'dk', '<cmd>BufferMoveNext<cr>', {})
-- Goto buffer in position...
map('n', 'da', '<cmd>BufferGoto 1<cr>', {})
map('n', 'dñ', '<cmd>BufferLast<cr>', {})
-- Close buffer
map('n', 'dc', ':bdelete<cr>', { desc = 'Close buffer' })
map('n', 'dw', '<cmd>BufferCloseAllButCurrent<cr>', {})
map('n', 'dq', '<cmd>BufferWipeout<cr>', {})

-- typescript helpers
map('n', 'gr', ':TSLspRenameFile<cr>', {})
map('n', '<leader>o', ':TSLspOrganize<cr>', {})

 -- navigation
  
 map('n', '<leader>D', ':Telescope file_browser<cr>')
 map('n', '<leader>d', ':Telescope file_browser path=%:p:h<cr>')
 map('n', '<leader>f', ':Telescope find_files<cr>')
 map('n', '<leader>b', ':Telescope buffers<cr>')
 map('n', '<leader>w', ':Telescope live_grep<cr>')

 -- git navigation
 map('n', '<leader>,,', ':Telescope git_commits<cr>')
 map('n', '<leader>,', ':Telescope git_status<cr>')

 -- quickfix navigation
 -- map('n', '<leader>cp', ':cprev<cr>zz')
 -- map('n', '<leader>cn', ':cnext<cr>zz')

 -- buffer navigation
 map('n', '<leader>bp', ':bprev<cr>')
 map('n', '<leader>bn', ':bnext<cr>')

 -- tab navigation
 map('n', '<leader>tp', ':tabprevious<cr>')
 map('n', '<leader>tn', ':tabnext<cr>')

 -- Floaterm
 map('n', 'ff', ':FloatermToggle<CR>')
 map('n', '<leader>l', [[<C-\><C-n>:FloatermNew lazygit<CR>]])
 map('t', 'ii', [[<C-\><C-n>]])
 map('t', 'fc', [[<C-\><C-n>:FloatermToggle<CR>]])
 map('t', 'kk', [[<C-\><C-n>:FloatermNext<CR>]])
 map('t', 'jj', [[<C-\><C-n>:FloatermPrev<CR>]])
 map('t', 'ññ', [[<C-\><C-n>:FloatermNew<CR>]])
 map('t', 'ww', [[<C-\><C-n>:FloatermKill<CR>:FloatermToggle<CR>]])

 -- Easymotion
 map('n', '<leader><leader>', '<Plug>(easymotion-sn)')
 
 -- Extras
 map('n', 'oo', '<C-o>')
 map('n', 'ii', '<C-i>')

-- Quickfix mappings
map('n', '<leader>ck', ':cexpr []<cr>', { desc = 'Clear list' })
map('n', '<leader>cc', ':cclose <cr>', { desc = 'Close list' })
map('n', '<leader>co', ':copen <cr>', { desc = 'Open list' })
map('n', '<leader>cf', ':cfdo %s/', { desc = 'Search & Replace' })
map('n', '<leader>cp', ':cprev<cr>zz', { desc = 'Prev Item' })
map('n', '<leader>cn', ':cnext<cr>zz', { desc = 'Next Item' })

-- buffer navigation
map('n', '<leader>bp', ':bprev<cr>', { desc = 'Prev buffer' })
map('n', '<leader>bn', ':bnext<cr>', { desc = 'Next buffer' })
map('n', '<leader>bd', ':bdelete<cr>', { desc = 'Delete buffer' })

-- tab navigation
map('n', '<leader>tp', ':tabprevious<cr>', { desc = 'Prev tab' })
map('n', '<leader>tn', ':tabnext<cr>', { desc = 'Next tab' })
map('n', '<leader>td', ':tabclose<cr>', { desc = 'Close tab' })

-- plugin management
map('n', '<leader>pc', ':Lazy check<cr>', { desc = 'Check plugins' })
map('n', '<leader>pu', ':Lazy update<cr>', { desc = 'Update plugins' })
map('n', '<leader>ps', ':Lazy show<cr>', { desc = 'Show plugins' })
map('n', '<leader>ph', ':Lazy help<cr>', { desc = 'Help' })
map('n', '<leader>pp', ':Lazy profile<cr>', { desc = 'Profile' })
map('n', '<leader>pl', ':Lazy logs<cr>', { desc = 'Logs' })
map('n', '<leader>px', ':Lazy clear<cr>', { desc = 'Clear uninstalled plugins' })
map('n', '<leader>pr', ':Lazy restore<cr>', { desc = 'Restore plugins from lockfile' })

-- resize with arrows
map('n', '<C-Up>', ':resize -2<CR>', { desc = 'Resize -2' })
map('n', '<C-Down>', ':resize +2<CR>', { desc = 'Resize +2' })
map('n', '<C-Left>', ':vertical resize -2<CR>', { desc = 'Vertical Resize -2' })
map('n', '<C-Right>', ':vertical resize +2<CR>', { desc = 'Vertical Resize +2' })
