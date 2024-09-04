local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- here you can setup the language servers

require('mason').setup({})
require('mason-lspconfig').setup({
  handlers = {
    lsp_zero.default_setup,
		clangd = function()
      require('lspconfig').clangd.setup({
        capabilities = {
          offsetEncoding = 'utf-8',
        },
      })
    end,
  },
})

require'lspconfig'.clangd.setup{}
require'lspconfig'.lua_ls.setup{}

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp_zero.defaults.cmp_mappings({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm(cmp_select),
	['<C-Space>'] = cmp.mapping.complete(cmp_select),
})

lsp_zero.setup()
