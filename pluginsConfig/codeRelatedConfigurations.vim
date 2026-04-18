" Muestra el popup de error o documentación bajo el cursor
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <space>t <cmd>:tag<cr>
"find 
nnoremap <Space>p /

"refactor

"hide and show code 
" zc close code block
" zo open code block 
" zm open all code block
"
"
lua << EOF
-- Autopairs: Configuración mínima para no interferir con LSP 0.11
require("nvim-autopairs").setup({ 
    map_cr = false,
    check_ts = true, -- Usa Treesitter para saber si estamos en un string o comentario
})
