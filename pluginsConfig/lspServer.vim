" lua config 
lua << EOF
require'lspconfig'.tsserver.setup{}

EOF
" require("mason").setup({
"     ui = {
"         icons = {
"             package_installed = "✓",
"             package_pending = "➜",
"             package_uninstalled = "✗"
"         }
"     }
" })

