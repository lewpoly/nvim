require("typescript").setup({
    disable_commands = false, -- prevent the plugin from creating Vim commands
    disable_formatting = false, -- disable tsserver's formatting capabilities
    debug = true, -- enable debug logging for commands
    server = { -- pass options to lspconfig's setup method
        -- on_attach = ...,
    },
})
