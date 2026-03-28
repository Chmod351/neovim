lua << EOF
-- 1. Mantener tu configuración de TS Tools (solo para TS/JS)
require("typescript-tools").setup {
  settings = { expose_as_code_action = "all" }
}

-- 2. FUNCIÓN DE DISPARO UNIVERSAL
-- Esta función decide si abrir el menú según el contexto
local function smart_complete()
  local col = vim.api.nvim_win_get_cursor(0)[2]
  local line = vim.api.nvim_get_current_line()
  local char = line:sub(col, col)

  -- Si el menú ya está abierto o es un espacio, no hacemos nada
  if vim.fn.pumvisible() ~= 0 or char:match("%s") or char == "" then
    return
  end

  -- Disparar Omnifunc (LSP o lenguaje específico)
  vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-x><C-o>", true, false, true), "n")
end

-- 3. CONFIGURACIÓN POR TIPO DE ARCHIVO
vim.api.nvim_create_autocmd('FileType', {
  pattern = '*', -- Se aplica a TODO (ts, vim, txt, etc.)
  callback = function()
    -- Si el archivo tiene un LSP activo, Neovim ya configura omnifunc.
    -- Para archivos sin LSP (como .txt o .vim), usamos el completado de sintaxis o buffer:
    if vim.bo.omnifunc == "" then
        vim.bo.omnifunc = "syntaxcomplete#Complete"
    end

    -- Activar el trigger automático para este buffer
    vim.api.nvim_create_autocmd('TextChangedI', {
      buffer = vim.api.nvim_get_current_buf(),
      callback = smart_complete
    })
  end
})
EOF
