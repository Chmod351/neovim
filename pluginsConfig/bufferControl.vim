"move to left and right buffer and close buffer
nnoremap <space>tq :w<CR>:bd<CR>
nnoremap <space>tn :bnext<CR>
nnoremap <space>tp :bprev<CR>
nnoremap <space>td :bd<CR>

"move between buffers 
nnoremap <Space>l <C-w>l
nnoremap <Space>h <C-w>h
nnoremap <Space>j <C-w>j
nnoremap <Space>k <C-w>k

" split vertical buffer 
nnoremap <space>v :vsplit<CR>

" split horizontal buffer 
nnoremap <space>s :split<CR>
