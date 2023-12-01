:set mouse=a
:syntax enable
:set showcmd
:set encoding=utf-8
:set showmatch
:set number
" :set relativenumber
" :set number relativenumber
:set splitbelow
:set splitright
:set autoindent
:set smarttab
:set noexpandtab
:set tabstop=2
:set pumheight=15
:set completeopt=menuone,noinsert,noselect
:set omnifunc=syntaxcomplete#Complete
:set shiftwidth=2
:set hlsearch
:set incsearch
:set cc=80
:set clipboard+=unnamedplus
:set laststatus=2
:set smartcase
:set wrap
:set visualbell
:set confirm
:set cursorline
:set nocursorcolumn
:set colorcolumn=
:set termguicolors "<--- watch colors on neovim usefull for frontend development"
:set listchars=tab:\|\ ,trail:.
:set fillchars+=vert:\ 
:set statusline+=%{get(b:,'gitsigns_status','')}
:set statusline+=\{…\}%3{codeium#GetStatusString()}
:set foldmethod=expr
:set foldexpr=nvim_treesitter#foldexpr()
:set foldlevel=99
:set conceallevel=2 concealcursor=n
"estos fueron sugeridos por la ia 
:set signcolumn=yes
:set updatetime=300
:set shortmess+=c
:set scrolloff=8
:set sidescrolloff=8
:set lazyredraw
" ----------------------------
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

" FUNCTIONS 
source ~/.config/nvim/functions/findAndReplace.vim
