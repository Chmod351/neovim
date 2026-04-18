lua << EOF
local cmp = require('cmp')
local luasnip = require('luasnip')


require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_snipmate").lazy_load() 

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' }, 
    }, {
    { name = 'buffer' },
  })
})
EOF


lua << EOF

-- 3. CONFIGURACIÓN DE SERVIDORES LSP
local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- TYPESCRIPT TOOLS
require("typescript-tools").setup({
  capabilities = capabilities,
  settings = {
    expose_as_code_action = "all",
    complete_function_calls = true,
  },
})

-- ESLINT (Aquí está el reemplazo de tu autocmd viejo)
lspconfig.eslint.setup({
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      callback = function()
        -- En v10/Flat Config, a veces es más seguro llamar a la acción de fix directo
        vim.lsp.buf.code_action({
          context = { only = { "source.fixAll.eslint" } },
          apply = true,
        })
      end,
    })
  end,
  -- Buscamos el nuevo estándar de archivo de configuración
  root_dir = lspconfig.util.root_pattern("eslint.config.js", "eslint.config.mjs", "package.json"),
})
EOF


