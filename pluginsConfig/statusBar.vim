"configuracion de airline 


let g:airline_theme='base16_gruvbox_dark_hard'
" let g:airline_theme='tomorrow'
" let g:airline_theme='base16_gruvbox_light_hard'
" let g:airline_theme='base16_tomorrow' 
" let g:airline_theme='base16_gruvbox_dark_pale'
" let g:airline_theme='transparent'
" let g:airline_theme='base16_chalk'

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#tagbar#enabled = 1

let g:airline_section_z = '%4l/%L'
if !exists('g:airline_symbols')
	  let g:airline_symbols = {}
endif

" let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

