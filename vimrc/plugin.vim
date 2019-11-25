call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-scripts/mru.vim'
Plug 'w0rp/ale'
Plug 'neovimhaskell/haskell-vim'
Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'
Plug 'iandingx/leetcode.vim'
call plug#end()
"=================
"airline
"=================
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1
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
"=================
"nerdtree
"=================
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMapOpenInTab='<ENTER>'
"=================
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
