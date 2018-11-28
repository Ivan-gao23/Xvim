call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-scripts/mru.vim'
Plug 'w0rp/ale'
call plug#end()
"=================
"airline
"=================
let g:airline#extensions#tabline#enabled = 1
"=================
"ale
"=================
"改变错误和警告标识符
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_lint_on_text_changed = 'never'
let g:ale_set_highlights = 0
let g:ale_lint_on_enter = 0
let g:ale_change_sign_column_color=1
"==================
"autoindent
"==================
