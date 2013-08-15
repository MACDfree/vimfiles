set lines=30 columns=100 "设置窗口大小

set nocompatible "设置不兼容模式
set number "显示行数
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR> "用<F2>开启/关闭行号显示

filetype plugin indent on "开启文件插件
filetype indent on "为特定文件类型载入相关缩进文件

set smartindent "设置智能缩进
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

syntax on "开启语法高亮

set showmatch "显示配对
set showcmd "在状态栏显示正在输入的命令

set ignorecase "搜索时不区分大小写
set smartcase "当搜索词有大写时区分大小写

set cursorline " 突出显示当前行

set showtabline=2 "一直显示标签页
set laststatus=2  "一直显示状态栏

"配色方案
colorscheme blue
set t_Co=256 "设定vim支持256色

set fileencodings=utf-8,gb2312,gbk,gb18030 "设置文件编码，解决中文问题

set completeopt+=longest
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"回车即选中当前项
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"

"上下左右键的行为
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

set foldmethod=syntax
"默认情况下不折叠
set foldlevel=99
map <F3> za

"自动检测文件类型并加载相应的设置
autocmd FileType python setlocal et sta sw=4 sts=4

autocmd FileType python setlocal foldmethod=indent

"vundle配置
set nocompatible    " be iMproved
filetype off        " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" setting of nerdtree
Bundle 'scrooloose/nerdtree'
let NERDTreeWinPos='left'
let NERDTreeWinSize=31
let NERDTreeChDirMode=1
"F8 打开nerdtree
nmap <F8> :NERDTreeToggle <CR>
"F7 新开一个tab标签
map f7 :tabnew<CR>
"F5 前一个tab标签
map f5 :tabp<CR>
"F6 后一个tab标签
map f6 :tabn<CR>

" setting of nerdcommenter
Bundle 'scrooloose/nerdcommenter'

"setting of syntastic
Bundle 'scrooloose/syntastic'

Bundle 'tomtom/tlib_vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'garbas/vim-snipmate'

Bundle 'honza/vim-snippets'

Bundle 'nathanaelkane/vim-indent-guides'

filetype plugin indent on    " required!
