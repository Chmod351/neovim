:syntax enable
:set autoindent
:set cc=80
:set completeopt=menuone,noinsert,noselect
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

:set listchars=tab:>-,trail:.,extends:>,precedes:<,nbsp:.
:set laststatus=2
:set lazyredraw
:set list

:set mouse=a

:set number
:set expandtab
:set nocursorcolumn
:set nocursorline
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
" :help statuscolumn
let g:tsserver_use_global = 1
" ----------------------------
let g:codeium_panel=1
" PLUGINS CONFIG
source ~/.config/nvim/pluginsConfig/plugins.vim
source ~/.config/nvim/pluginsConfig/cocConfig.vim
source ~/.config/nvim/pluginsConfig/lspServer.vim
source ~/.config/nvim/pluginsConfig/highlight.vim
source ~/.config/nvim/pluginsConfig/menu.vim
source ~/.config/nvim/pluginsConfig/statusBar.vim
source ~/.config/nvim/pluginsConfig/git.vim
source ~/.config/nvim/pluginsConfig/bufferControl.vim
source ~/.config/nvim/pluginsConfig/codeRelatedConfigurations.vim
source ~/.config/nvim/pluginsConfig/fuzyfinder.vim
source ~/.config/nvim/pluginsConfig/commenter.vim
" SEARCH AND REPLACE
source ~/.config/nvim/pluginsConfig/searchAndReplace.vim
