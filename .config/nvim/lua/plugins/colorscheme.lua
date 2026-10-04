return {
    {
        'zenbones-theme/zenbones.nvim',
        -- Optionally install Lush. Allows for more configuration or extending the colorscheme
        -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
        -- In Vim, compat mode is turned on as Lush only works in Neovim.
        dependencies = 'rktjmp/lush.nvim',
        lazy = false,
        priority = 1000,
        -- you can set set configuration options here
        config = function()
            vim.g.zenbones_darken_comments = 45
            -- vim.cmd.colorscheme('zenbones')
        end,
    },
    {
        'sainnhe/everforest',
        lazy = false,
        priority = 1000,
        config = function()
            -- Optionally configure and load the colorscheme
            -- directly inside the plugin declaration.
            vim.g.everforest_enable_italic = true
            -- vim.cmd.colorscheme('everforest')
        end,
    },
    {
        'vague-theme/vague.nvim',
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other plugins
        config = function()
            -- NOTE: you do not need to call setup if you don't want to.
            require('vague').setup({
                -- optional configuration here
            })
            -- vim.cmd.colorscheme('vague')
        end,
    },
    {
        'savq/melange-nvim',
        -- vim.cmd.colorscheme('melange'),
    },
    {
        'ribru17/bamboo.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('bamboo').setup({
                -- optional configuration here
            })

            -- vim.cmd.colorscheme('bamboo')
        end,
    },
    {
        'GhostVox/subliminal.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme('subliminal')
            vim.api.nvim_set_hl(0, 'Visual', {
                fg = '#ff0000', -- foreground color
                bg = '#4ec9b0', -- background color
                bold = true, -- optional style
            })
        end,
    },
}
