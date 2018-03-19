" 显示行号
set number
" 显示标尺
set ruler
" 历史纪录
set history=1000
" 输入的命令显示出来，看的清楚些
set showcmd
" 启动显示状态行1，总是显示状态行2
set laststatus=2
" 语法高亮显示
syntax on
set fileencodings=utf-8,gb2312,gbk,cp936,latin-1
set fileencoding=utf-8
set termencoding=utf-8
set fileformat=unix
set encoding=utf-8
" 共享剪贴板
set clipboard=unnamed
" 文件被改动时自动载入
set autoread
" 顶部底部保持3行距离
set scrolloff=3


" *********************************************
" Vbundle插件管理                
" *********************************************
set nocompatible              " required
filetype off                  " required 
   
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()        
 
" 参数传递插件的路径
"call vundle#begin('~/some/path/here')
 
" vundle 插件列表
Plugin 'gmarik/Vundle.vim' 
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Lokaltog/vim-powerline'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/indentpython.vim'

" 注意旧版的 Vundle 使用的关键词是 Bundle 
" 所有插件都放在 Begin 和 end 中间                 
call vundle#end()            " required
filetype plugin indent on    " required


" *********************************************
" Tomorrow主题配置                " *********************************************
set t_Co=256
set background=dark
colorscheme Tomorrow-Night


" *********************************************
" 分割布局相关
" *********************************************
set splitbelow
set splitright
"快捷键，ctrl+l切换到左边布局，ctrl+h切换到右边布局
"ctrl+k切换到上面布局，ctrl+j切换到下面布局
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" 开启代码折叠功能
" 根据当前代码行的缩进来进行代码折叠
set foldmethod=indent
set foldlevel=99
" 通过空格来折叠代码（za指令映射）
" nnoremap <space> za


" *********************************************
" NERD插件属性
" *********************************************
" 开启vim的时候默认开启NERDTree
au vimenter * NERDTree   
" 设置F2为开启NERDTree的快捷键
map <F2> :NERDTreeToggle<CR>  
"let NERDTreeChDirMode=1
"显示书签
let NERDTreeShowBookmarks=1
"设置忽略文件类型
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
"窗口大小
let NERDTreeWinSize=25
" 退出时自动关闭
let NERDTreeQuitOnOpen=1

" *********************************************
" YCM插件相关
" *********************************************
let g:ycm_autoclose_preview_window_after_completion=1
" 跳转到定义处
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 默认tab、s-tab和自动补全冲突
let g:ycm_key_list_select_completion = ['<TAB>', '<c-n>', '<Down>'] 
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<c-p>', '<Up>'] 
let g:ycm_auto_trigger = 1


" *********************************************
" ctrlp
" *********************************************
let g:ctrlp_map = '<c-p>' 
let g:ctrlp_cmd = 'CtrlP'
" 设置过滤不进行查找的后缀名 
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|pyc)$'


" *********************************************
" python代码风格PEP8
" *********************************************
au BufNewFile,BufRead *.py set tabstop=4 |set softtabstop=4|set shiftwidth=4|set textwidth=79|set expandtab|set autoindent|set fileformat=unix
au BufNewFile,BufRead *.js, *.html, *.css set tabstop=2|set softtabstop=2|set shiftwidth=2




