-- nvim-cmp setup
local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end
local cmp = require 'cmp'
-- local lspkind = require('lspkind')
local cmp_kinds = {
  Text = '  ',
  Method = '  ',
  Function = '  ',
  Constructor = '  ',
  Field = '  ',
  Variable = '  ',
  Class = '  ',
  Interface = '  ',
  Module = '  ',
  Property = '  ',
  Unit = '  ',
  Value = '  ',
  Enum = '  ',
  Keyword = '  ',
  Snippet = '  ',
  Color = '  ',
  File = '  ',
  Reference = '  ',
  Folder = '  ',
  EnumMember = '  ',
  Constant = '  ',
  Struct = '  ',
  Event = '  ',
  Operator = '  ',
  TypeParameter = '  ',
}
local tabnine = require('cmp_tabnine.config')
local luasnip = require 'luasnip'
    luasnip.config.set_config {
        history = true,
        updateevents = "TextChanged,TextChangedI"
    }

    require("luasnip/loaders/from_vscode").lazy_load()
cmp.setup {
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-P>'] = cmp.mapping.select_prev_item(),
    ['<C-N>'] = cmp.mapping.select_next_item(),
    ['<C-D>'] = cmp.mapping.scroll_docs(-4),
    ['<C-F>'] = cmp.mapping.scroll_docs(4),
    ['<C-SPACE>'] = cmp.mapping.complete(),
    ['<C-E>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
  },

  documentation = {
    border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'nvim_lua' },
    { name = 'cmp_tabnine' },
    { name = 'luasnip' },
    { name = 'buffer' },
    { name = 'path' },
    { name = 'latex_symbols' },
  },
  formatting = {
    format = function(_, vim_item)
      vim_item.kind = (cmp_kinds[vim_item.kind] or '') .. vim_item.kind
      return vim_item
    end,
      with_text = true,
     menu = ({
       buffer = "[Buffer]",
       nvim_lsp = "[LSP]",
       luasnip = "[LuaSnip]",
       nvim_lua = "[Lua]",
       latex_symbols = "[Latex]",
       cmp_tabnine = "[TN]",
       path = "[Path]",
   })
},
  }


tabnine:setup({
        max_lines = 1000;
        max_num_results = 20;
        sort = true;
	run_on_every_keystroke = true;
	snippet_placeholder = '..';
})
