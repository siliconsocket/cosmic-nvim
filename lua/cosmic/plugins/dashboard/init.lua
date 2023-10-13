local user_config = require('cosmic.core.user')
local icons = require('cosmic.utils.icons')
local g = vim.g

return {
    'glepnir/dashboard-nvim',
    hide = {
        statusline = true,
        tabline = true,
        winbar = true,
    },
    config = function()
        g.dashboard_default_executive = 'telescope'

        g.dashboard_session_directory = vim.fn.stdpath('data') .. '/sessions'

        g.dashboard_custom_section = {
            find_file = {
                description = {icons.file1 .. 'Find File           <space>f'},
                command = 'Telescope find_files'
            },
            file_explorer = {
                description = {icons.file2 .. 'File Manager        <space>d'},
                command = 'NvimTreeToggle'
            },
            find_string = {
                description = {icons.word .. 'Live Grep           <space>w'},
                command = 'Telescope grep_string'
            }
        }

        g.dashboard_custom_footer = {''}

        require('dashboard').setup({
            -- config
            config = {
                header = {
                    'OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO',
                    'OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO',
                    'OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO',
                    'OOOOOOOOOOOOOOOOOOOOO&.             (OOOOOOO/             *OOOOOOOOOOOOOOOOOOOOO',
                    'OOOOOOOOOOOOOOOO(                ......                         &OOOOOOOOOOOOOOO',
                    'OOOOOOOOOOOOO*                ......                               (OOOOOOOOOOOO',
                    'OOOOOOOOOOO         .OOOOOOOOOOOO(         (OOOOOOOOOOOOOOO&          OOOOOOOOOO',
                    'OOOOOOOOO.       /OOOOOOOOOOOOOO        OOOOOOOOOOOOOOOOOOOOOOO.       *OOOOOOOO',
                    'OOOOOOOO       /OOOOOOOOOOOOOO*       OOOOOOOOOOOOOOOOOOOOOOOOOOO,       OOOOOOO',
                    'OOOOOOO       OOOOOOOOOOOOOOO(      *OOOOOOOOOOOOOOOOOOOOOOOOOOOOO&       OOOOOO',
                    'OOOOOO,      OOOOOOOOOOO%          .OOOOOOOOOOO         OOOOOOOOOOO%      #OOOOO',
                    'OOOOOO       OOOOOOOOOO.           &OOOOOOOOOO           /OOOOOOOOOO      .OOOOO',
                    'OOOOOO      .OOOOOOOOOO            OOOOOOOOOO&              %OOOOOOO      .OOOOO',
                    'OOOOOO,      OOOOOOOOOOO,              .OOOOOOO                  OO%...   (OOOOO',
                    'OOOOOOO       OOOOOOOOOOOOOO&&&#,          *OOOOOOO&%%/.            ....  OOOOOO',
                    'OOOOOOOO       &OOOOOOOOOOOOOOOOOOOOOO,       OOOOOOOOOOOOOO&         ...OOOOOOO',
                    'OOOOOOOOO        &OOOOOOOOOOOOOOOOOOOOOOO.     .OOOOOOOOOOOOOOOO        OOOOOOOO',
                    'OOOOOOO%...         #OOOOOOOOOOOOOOOOOOOOOO      OOOOOOOOOOOOOOOO&       OOOOOOO',
                    'OOOOOOO  ....             .,*/%OOOOOOOOOOOOO/     */(&OOOOOOOOOOOOO       OOOOOO',
                    'OOOOOO.    ..OOO%                 OOOOOOOOOOO.          *OOOOOOOOOO&      /OOOOO',
                    'OOOOOO      .OOOOOOOOO.            OOOOOOOOOO#           ,OOOOOOOOOO       OOOOO',
                    'OOOOOO       OOOOOOOOOO,           OOOOOOOOOO/           #OOOOOOOOOO      .OOOOO',
                    'OOOOOO*      &OOOOOOOOOOO        (OOOOOOOOOOO          .OOOOOOOOOOO(      %OOOOO',
                    'OOOOOOO       OOOOOOOOOOOOOOOOOOOOOOOOOOOOOO       OOOOOOOOOOOOOOO%      .OOOOOO',
                    'OOOOOOOO       *OOOOOOOOOOOOOOOOOOOOOOOOOOO       OOOOOOOOOOOOOOO.       OOOOOOO',
                    'OOOOOOOOO,       .OOOOOOOOOOOOOOOOOOOOOO/       .OOOOOOOOOOOOOO        #OOOOOOOO',
                    'OOOOOOOOOOO          #OOOOOOOOOOOOOO&          OOOOOOOOOOOO/         *OOOOOOOOOO',
                    'OOOOOOOOOOOOO#                               .....                 &OOOOOOOOOOOO',
                    'OOOOOOOOOOOOOOOOO                        ......                .OOOOOOOOOOOOOOOO',
                    'OOOOOOOOOOOOOOOOOOOOOO#.           /OOOOOOOOO*           ,&OOOOOOOOOOOOOOOOOOOOO',
                    'OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO',
                    'OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO',
                    '',
                    '',
                    '',
                    '  ███████╗██╗██╗     ██╗ ██████╗ ██████╗ ███╗   ██╗',
                    '  ██╔════╝██║██║     ██║██╔════╝██╔═══██╗████╗  ██║',
                    '  ███████╗██║██║     ██║██║     ██║   ██║██╔██╗ ██║',
                    '  ╚════██║██║██║     ██║██║     ██║   ██║██║╚██╗██║',
                    '  ███████║██║███████╗██║╚██████╗╚██████╔╝██║ ╚████║',
                    '  ╚══════╝╚═╝╚══════╝╚═╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝',
                    '',
                    '   ███████╗ ██████╗  ██████╗██╗  ██╗███████╗████████╗',
                    '   ██╔════╝██╔═══██╗██╔════╝██║ ██╔╝██╔════╝╚══██╔══╝',
                    '   ███████╗██║   ██║██║     █████╔╝ █████╗     ██║   ',
                    '   ╚════██║██║   ██║██║     ██╔═██╗ ██╔══╝     ██║   ',
                    '   ███████║╚██████╔╝╚██████╗██║  ██╗███████╗   ██║   ',
                    '   ╚══════╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝   ╚═╝   ',
                    ''
                },
                footer = false,
            }
        })
    end,
    event = 'VimEnter',
    enabled = not vim.tbl_contains(user_config.disable_builtin_plugins, 'dashboard')
}
