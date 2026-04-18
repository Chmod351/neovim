nnoremap <space>e <cmd>Telescope find_files<cr>
nnoremap <space>w <cmd>Telescope live_grep<cr>
nnoremap <space>b <cmd>Telescope buffers<cr>
nnoremap <F1> <cmd>Telescope help_tags<cr>
nnoremap <F2> <cmd>Telescope colorscheme<cr>
nnoremap <silent>gr :Telescope lsp_references<CR>
nnoremap <space>d <cmd>Telescope diagnostics<cr>
nnoremap <space>t <cmd>:tag<cr>

let g:telescope_fzf_theme = 'gruvbox'
let g:telescope_layout_strategy = 'horizontal'
let g:telescope_prompt_prefix = '👉 '
let g:telescope_borderchars = ['─', '│', '-', '│', '╭', '╮', '╯', '╰']
let g:telescope_prompt_position = "bottom"
let g:telescope_initial_mode = 'insert'

lua << EOF
local telescope = require('telescope')

telescope.setup({
  defaults = {
    -- El motor interno: si esto falla, no busca nada
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    prompt_prefix = '👉 ',
    selection_caret = "󰁔 ",
    entry_prefix = "  ",
    initial_mode = 'insert',
    selection_strategy = 'reset',
    sorting_strategy = 'descending',
    layout_strategy = 'horizontal',
    layout_config = {
      horizontal = {
        preview_width = 0.6,
        prompt_position = "bottom", 
        },
    },
    file_ignore_patterns = { "node_modules", ".git/", "dist", "build" },
    winblend = 15,
    borderchars = {'─', '│', '─', '│', '╭', '╮', '╯', '╰'},
  },
  pickers = {
    find_files = {
      theme = "dropdown", 
      hidden = true      
    }
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    }
  }
})

pcall(telescope.load_extension, 'fzf')
EOF
