" :SReplace               - Search and replace
" :SReplaceAll            - Search and replace all including ignored files
" :SReplaceAndSave        - Search, replace and save
" :SReplaceAllAndSave     - Search, replace and save including ignored files

lua << EOF
require('nvim-search-and-replace').setup({
-- file patters to ignore
    ignore = {'**/node_modules/**', '**/.git/**',  '**/.gitignore', '**/.gitmodules','build/**'},
    -- save the changes after replace
    update_changes = false,
    -- keymap for search and replace
    replace_keymap = '<space>tt',
    -- keymap for search and replace ( this does not care about ignored files )
    replace_all_keymap = '<space>ta',
    -- keymap for search and replace
    replace_and_save_keymap = '<space>ts',
    -- keymap for search and replace ( this does not care about ignored files )
    replace_all_and_save_keymap = '<space>tS',
   })
EOF
" REEMPLAZAR
function InteractiveReplace()
  let search_word = input("Enter the word to search: ")
  let replace_word = input("Enter the word to replace with: ")

  if search_word == "" || replace_word == ""
    echom "Both search and replace words are required"
    return
  endif

  let l:pattern = '\V\C'. search_word
  let l:first_match = 1
  while search(l:pattern, 'c')
    echo "Found match at line ". line('.')
    let l:user_choice = input("Do you want to replace this instance? (y/n): ")
   if l:user_choice ==# 'y'
      execute "%s/". search_word. "/". replace_word. "/gc"
    else
      break " Salir del bucle si el usuario decide no reemplazar
    endif
    let l:first_match = 0
  endwhile
endfunction

" find and replace 
nnoremap <space>ññ :call InteractiveReplace()<CR>
