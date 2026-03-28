lua << EOF
require("typescript-tools").setup {
  settings = {
    expose_as_code_action = "all",
    tsserver_file_preferences = {
      includeInlayParameterNameHints = "all",
      includeCompletionsForModuleExports = true,
      quotePreference = "auto",
    },
  },
}

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local bufnr = args.buf
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    -- 1. Mappings estándar
    local opts = { buffer = bufnr }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)

    -- 2. Habilitar el autocompletado nativo vía Omnifunc
    -- Esto es lo que Neovim 0.11 usa para 'vim.lsp.completion'
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- 3. Trigger automático sin usar funciones "nil"
    vim.api.nvim_create_autocmd('TextChangedI', {
      buffer = bufnr,
      callback = function()
        local line = vim.api.nvim_get_current_line()
        local col = vim.api.nvim_win_get_cursor(0)[2]
        local char = line:sub(col, col)

        -- Si es una letra o un punto y el menú no está visible, lo disparamos
        if char:match("[%w%.]") and vim.fn.pumvisible() == 0 then
          -- Feedkeys emula que apretás <C-x><C-o> (el trigger de omnifunc)
          vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-x><C-o>", true, false, true), "n")
        end
      end,
    })
  end,
})
EOF
