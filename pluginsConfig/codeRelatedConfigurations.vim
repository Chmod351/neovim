"configuracion de format
" nnoremap <space>f :call CocAction('format')<CR>:w<CR>
" nnoremap <space>f :call CocAction('runCommand', 'prettier.formatFile')<CR>:w<CR>
nnoremap <space>f :call CocAction('runCommand', 'prettier.formatFile')<CR>:w<CR>:CocCommand eslint.executeAutofix<CR>

" comment and uncomment
nnoremap <space>, :Commentary<CR>
vnoremap <space>, :Commentary<CR>  

"ctags 
nnoremap <space>t :tag   <C-R>=expand('<cword>')<CR><CR>

"find 
nnoremap <Space>p /

"surround 
vnoremap <silent> S( :s/\%V.*\%V.\?/( & )/<CR>`<CR>
vnoremap <silent> S[ :s/\%V.*\%V.\?/[ & ]/<CR>`<CR>
vnoremap <silent> S{ :s/\%V.*\%V.\?/{ & }/<CR>`<CR>
vnoremap <silent> S< :s/\%V.*\%V.\?/< & >/<CR>`<CR>
vnoremap <silent> S" :s/\%V.*\%V.\?/"&"/<CR>`<CR>
vnoremap <silent> S' :s/\%V.*\%V.\?/'&'/<CR>`<CR>
vnoremap <silent> S` :s/\%V.*\%V.\?/`&`/<CR>`<CR>

"refactor
xmap <space>x <Plug>(coc-codeaction-selected)
nmap <space>x  <Plug>(coc-codeaction-selected)

"autocompletado
let g:codeium_disable_bindings = 1
inoremap <script><silent><nowait><expr> <C-G> codeium#Accept()
inoremap <C-;>  <Cmd>call codeium#CycleCompletions(1)<CR> "next completado"
inoremap <C-,>  <Cmd>call codeium#CycleCompletions(-1)<CR> "orevious completado"
inoremap <C-x>  <Cmd>call codeium#Clear()<CR> "limpiar autocompletado

"hide and show code 
" zc close code block
" zo open code block 
" zm open all code block
lua << EOF
require("nvim-autopairs").setup { map_cr = false }
EOF

