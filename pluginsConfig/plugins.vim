call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-plug'
" Plug 'williamboman/mason.nvim'  "<--useless
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter'

"tema
Plug 'sainnhe/gruvbox-material' "<--uselessplu
Plug 'folke/tokyonight.nvim'
Plug 'EdenEast/nightfox.nvim' " Vim-Plug
Plug 'tribela/vim-transparent' "<--uselessplgPlg

"autocompletado  requiere sudo npm install -g typescript typescript-language-server && npm install -g taliwind && sudo npm install --global eslint-lsp
" Plug 'Exafunction/codeium.vim'

" search and replace 
Plug 's1n7ax/nvim-search-and-replace'
"snippets
Plug 'pmizio/typescript-tools.nvim'
Plug 'honza/vim-snippets'
Plug 'mlaursen/vim-react-snippets'
"multicursor
Plug 'jake-stewart/multicursor.nvim',{ 'branch': '1.0' }

"RAILS DEVELOPMENT
" Plug 'tpope/vim-rails'
"menu
Plug 'preservim/nerdtree'
"status column 
Plug 'luukvbaal/statuscol.nvim'

"iconos
Plug 'ryanoasis/vim-devicons'    "<--useless
Plug 'nvim-tree/nvim-web-devicons'  "<--useless only needed by telescope

"autopairs
Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-ts-autotag'
Plug 'tpope/vim-surround'

"barra de status
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'  "<--useless
Plug 'Yggdroot/indentLine'
"Commentary 
" Plug 'tpope/vim-commentary'
Plug 'preservim/nerdcommenter'

"git integrations 
Plug 'kdheepak/lazygit.nvim'
Plug 'lewis6991/gitsigns.nvim'
"fzf
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'BurntSushi/ripgrep'

call plug#end()
