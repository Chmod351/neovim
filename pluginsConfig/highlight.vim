"highlight text 
let g:gruvbox_material_background='hard'
colorscheme gruvbox-material
" colorscheme habamax
" colorscheme slate
let g:highlightedyank_highlight_duration = 1000
let g:terminal_color=15


lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query","javascript","typescript", "css","json","sql","xml","yaml","tsx","markdown","html","dockerfile","bash"},
  sync_install = false,
  auto_install = true,
  enable = true,
  additional_vim_regex_highlighting = true,
  disable = {},
  indent = { enable = true },
  rainbow = { enable = true },
	highlight = { enable = true},
	 autotag = {
    enable = true,
  }
}
EOF
