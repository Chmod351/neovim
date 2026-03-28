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
require('telescope').setup({
  defaults = {
    -- Desactivamos treesitter en la preview para evitar el error 'ft_to_lang'
    preview = {
      treesitter = false,
    },
    layout_strategy = 'horizontal',
    layout_config = {
      horizontal = {
        preview_width = 0.6,
      },
      vertical = {
        preview_height = 0.5,
      },
    },
    prompt_prefix = '👉 ',
    selection_caret = "󰁔 ",
    entry_prefix = "  ",
    initial_mode = 'insert',
    selection_strategy = 'reset',
    sorting_strategy = 'descending',
    winblend = 15,
    borderchars = {'─', '│', '─', '│', '╭', '╮', '╯', '╰'},
    file_ignore_patterns = { "node_modules", ".git/" },
  },
  extensions = {
    -- Si tenés instalado el fzf nativo, esto lo carga
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    }
  }
})
EOF
