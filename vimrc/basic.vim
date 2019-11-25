"======================
"General
"======================
"删除键非兼容模式
set backspace=indent,eol,start
"取消兼容模式
set nocompatible
"语法高亮
syntax on
filetype plugin indent on
"检测文件类型
filetype on
"自动格式
set cindent
"tab4格
set tabstop =4
"tab转为空格
set shiftwidth=4
set softtabstop=4
set expandtab
"去掉vi兼容模式
set nocompatible
"自动读取修改
set autoread
"系统剪贴板
set clipboard=unnamed
"设置背景
colorscheme base16-material-darker
colorscheme base16-material-darker
set t_C0=256
set background=dark
"设置字体
set guifont=Monaco:h15
"设置行号
set nu
set termguicolors
let base16colorspace=256
set splitbelow
let mapleader=","
map <space> :

nnoremap <C-q> :qa<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <C-l> :split term://zsh<CR>:resize 15 <CR>i
tnoremap <C-l> <C-\><C-n>:q!<CR>
tnoremap <C-w> <C-\><C-n><C-w><C-w>
nnoremap <C-e> 0$
set mouse=a
