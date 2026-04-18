" Configuración del popup para que aparezca automáticamente
lua << EOF
vim.diagnostic.config({
  virtual_text = true, -- Muestra el error al final de la línea
  float = {
    focused = false,
    style = "minimal",
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
})

-- Autocomando para mostrar el popup de error automáticamente al dejar el cursor
vim.api.nvim_create_autocmd("CursorHold", {
  buffer = bufnr,
  callback = function()
    local opts = {
      focusable = false,
      close_events = { "CursorMoved", "CursorMovedI", "BufHidden", "InsertCharPre" },
      border = 'rounded',
      scope = 'cursor',
    }
    vim.diagnostic.open_float(nil, opts)
  end
})
EOF

