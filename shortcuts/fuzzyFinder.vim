let g:fzf_layout = { 'window': { 'width': 0.7, 'height': 0.7, 'bind': 'esc:abort' } }

let g:coc_fzf_preview_fullscreen = 0
let g:coc_fzf_preview = {'options': ['--layout=reverse', '--info=inline', '--preview','right:80%']}
let g:coc_fzf_opts = ['--layout=reverse', '--info=inline', '--preview']

    let g:fzf_colors =
    \ { 'fg':      ['fg', 'Normal'],
      \ 'bg':      ['bg', 'Normal'],
      \ 'hl':      ['fg', 'Comment'],
      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Statement'],
      \ 'info':    ['fg', 'PreProc'],
      \ 'border':  ['fg', 'Ignore'],
      \ 'prompt':  ['fg', 'Conditional'],
      \ 'pointer': ['fg', 'Exception'],
      \ 'marker':  ['fg', 'Keyword'],
      \ 'spinner': ['fg', 'Label'],
      \ 'header':  ['fg', 'Comment'] }

let g:fzf_colors_option = '--color=16'

nnoremap <space>2 :Files<CR>
nnoremap <space>3 :Rg<CR>
" tnoremap <space>q :abort<CR>
nnoremap <space>5 :Colors<CR>

