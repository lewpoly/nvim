local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
capabilities.textDocument.completion.completionItem.snippetSupport = true
local null_ls = require("null-ls")

local sources = {
    null_ls.builtins.formatting.prettierd.with({
        filetypes = { "html", "cssls", "sumneko_lua", "tsserver", "pyright" },
    }),
}
null_ls.config({ sources = sources })

-- Hover Diagnostic
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.lsp.diagnostic.show_line_diagnostics({focusable=false})]]

-- Hide Diagnostic Message
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false
    }
)

-- Devicons in Gutter
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- HTML
require'lspconfig'.html.setup {
  capabilities = capabilities,
}
-- CSS
require'lspconfig'.cssls.setup {
  capabilities = capabilities,
}

-- Python
require'lspconfig'.pyright.setup{
  capabilities = capabilities,
}

-- tsserver
require'lspconfig'.tsserver.setup{
  capabilities = capabilities,
}

-- Lua
USER = vim.fn.expand('$USER')

local sumneko_root_path = ""
local sumneko_binary = ""

if vim.fn.has("mac") == 1 then
    sumneko_root_path = "/Users/" .. USER .. "/.config/nvim/lua-language-server"
    sumneko_binary = "/Users/" .. USER .. "/.config/nvim/lua-language-server/bin/macOS/lua-language-server"
elseif vim.fn.has("unix") == 1 then
    sumneko_root_path = "/home/" .. USER .. "/.config/nvim/lua-language-server"
    sumneko_binary = "/home/" .. USER .. "/.config/nvim/lua-language-server/bin/Linux/lua-language-server"
else
    print("Unsupported system for sumneko")
end

require'lspconfig'.sumneko_lua.setup {
    cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                -- Setup your lua path
                path = vim.split(package.path, ';')
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'}
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true}
            }
        }
    }
}

-- C++
require'lspconfig'.ccls.setup {
    cmd = {
        'ccls',
        '--init={"cache": {"directory": "/tmp/ccls-cache"}}'
    };
    capabilities = capabilities
}

-- EFM
-- require "lspconfig".efm.setup {
--     init_options = {documentFormatting = true},
--     settings = {
--         rootMarkers = {".git/"},
--         languages = {
--             lua = {
--                 {formatCommand = "lua-format -i", formatStdin = true}
--             }
--         }
--     }
-- }
