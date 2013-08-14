set lines=30 columns=100 "设置窗口大小

set nocompatible "设置不兼容模式
set number "显示行数
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR> "用<F2>开启/关闭行号显示
set smartindent "设置智能缩进
set autoindent "设置自动缩进
syntax on "开启语法高亮

set showmatch "显示配对
set showcmd "在状态栏显示正在输入的命令

set ignorecase "搜索时不区分大小写
set smartcase "当搜索词有大写时区分大小写

set cursorline " 突出显示当前行

"设置空格代替Tab
set expandtab 
set shiftwidth=2
set tabstop=2

set showtabline=2 "一直显示标签页
set laststatus=2  "一直显示状态栏

set nobackup "设置无备份文件

"配色方案
colorscheme blue
set t_Co=256 "设定vim支持256色

set backspace=indent,eol,start "设置退格

set fileencodings=utf-8,gb2312,gbk,gb18030 "设置文件编码，解决中文问题

filetype plugin indent on "开启文件插件


"vundle配置
set nocompatible    " be iMproved
filetype off        " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" vim-scripts repos
Bundle 'vim-plugin-foo'
Bundle 'vim-plugin-bar'

filetype plugin indent on    " required!
