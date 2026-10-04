return {
    -- Configure LSP servers
    {
        'neovim/nvim-lspconfig',
        opts = {
            servers = {
                basedpyright = {
                    settings = {
                        basedpyright = {
                            analysis = {
                                typeCheckingMode = 'basic',
                                inlayHints = {
                                    variableTypes = true,
                                    functionReturnTypes = true,
                                    parameterTypes = true,
                                    callArgumentNames = true,
                                    genericTypes = true,
                                },
                            },
                        },
                    },
                },
            },

            inlay_hints = {
                enabled = true,
            },
        },
    },

    -- Configure Mason to install basedpyright
    {
        'mason-org/mason.nvim',
        opts = {
            ensure_installed = {
                'basedpyright', -- Python LSP with inlay hints support
                'ruff', -- Python linter and formatter
            },
        },
    },
}
