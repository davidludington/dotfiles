-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Enable inlay hints for all LSP servers that support them
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        vim.lsp.inlay_hint.enable(true, { bufnr = args.buf })
    end,
})
