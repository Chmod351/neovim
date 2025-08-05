# This is my personal neovim configuration.

clone  repo 
install plugins with `:PlugInstall`

save and close, then run

install 
`
sudo pacman -S python-pynvim
`

`sudo npm install -g typescript typescript-language-server && npm install -g taliwind && sudo npm install --global eslint-lsp`

and

`:CocInstall coc-prettier  coc-eslint  coc-diagnostic @yaegassy/coc-tailwindcss3 coc-snippets`

you will require a codeium auth key to use autocomplete.

## You will find all plugins configuration at

`/pluginsConfig`


If u have issues with clipboard try with

`
sudo pacman -S xclip xsel wl-clipboard
`

