syntax enable
:set autoindent
:set cc=80
:set completeopt=menu,menuone,noinsert,noselect
:set shortmess+=c
:set confirm
:set conceallevel=2 concealcursor=n
:set colorcolumn=
:set cursorline
:set clipboard+=unnamedplus

:set encoding=utf-8
:set foldmethod=expr
:set foldexpr=nvim_treesitter#foldexpr()
:set foldlevel=99

:set hlsearch
:set incsearch
let g:typescript_tsserver = 1
:set listchars=tab:>-,trail:.,extends:>,precedes:<,nbsp:.
:set laststatus=2
:set lazyredraw
:set list

:set mouse=a

:set number
:set expandtab
" :set nocursorcolumn
" :set nocursorline
:set noshowmode
:set omnifunc=syntaxcomplete#Complete

:set pumheight=15

:set showcmd
:set splitbelow
:set splitright
:set smarttab
:set showmatch
:set shiftwidth=2
:set smartcase
:set shortmess+=c
:set scrolloff=8
:set sidescrolloff=8
:set statusline+=%{get(b:,'gitsigns_status','')}
:set statusline+=\{…\}%3{codeium#GetStatusString()}
:set signcolumn=yes
:set tabstop=2
:set termguicolors "<--- watch colors on neovim usefull for frontend development"
:set updatetime=300
" :set relativenumber
" :set number relativenumber
:set visualbell
:set wrap
:set statuscolumn = "%s %l %r"
:help statuscolumn
:set statusline+=%{get(b:,'gitsigns_status','')}
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
	autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

" ----------------------------
let g:loaded_node_provider = 0
let g:loaded_perl_provider = 0
let g:loaded_ruby_provider = 0
let g:loaded_python3_provider = 0

" PLUGINS CONFIG
source ~/.config/nvim/pluginsConfig/plugins.vim
source ~/.config/nvim/pluginsConfig/typescriptTools.vim
source ~/.config/nvim/pluginsConfig/highlight.vim
source ~/.config/nvim/pluginsConfig/menu.vim
source ~/.config/nvim/pluginsConfig/statusBar.vim
source ~/.config/nvim/pluginsConfig/git.vim
source ~/.config/nvim/pluginsConfig/bufferControl.vim
source ~/.config/nvim/pluginsConfig/codeRelatedConfigurations.vim
source ~/.config/nvim/pluginsConfig/fuzyfinder.vim
source ~/.config/nvim/pluginsConfig/commenter.vim
source ~/.config/nvim/pluginsConfig/multicursor.vim
" SEARCH AND REPLACE
source ~/.config/nvim/pluginsConfig/searchAndReplace.vim
