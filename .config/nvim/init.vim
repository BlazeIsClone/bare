" Specify a directory for vim-plug vendors
call plug#begin('~/.vim/plugged')

" Find, Filter, Preview, Pick. All lua, all the time.
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Retro groove color scheme for Vim - community maintained edition
Plug 'gruvbox-community/gruvbox'

" Prettier
Plug 'prettier/vim-prettier', { 'do': 'npm install --frozen-lockfile --production' }

" A tree explorer plugin for vim.
Plug 'preservim/nerdtree'

" Initialize plugin system
call plug#end()

" This will call the color Scheme for execution
colorscheme gruvbox

" Remaps
let mapleader = " "
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>

" Colors
" highlight ColorColumn ctermbg=0 guibg=grey
hi SignColumn guibg=none
hi CursorLineNR guibg=None
" highlight Normal guibg=none
highlight LineNr guifg=#5eacd3
highlight netrwDir guifg=#5eacd3
highlight qfFileName guifg=#aed75f
hi TelescopeBorder guifg=#5eacd

" Import Lua Configs
lua require("blaze")

let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
